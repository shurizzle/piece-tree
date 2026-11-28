//! Builtins about buffers and windows as data: ports of `bufadd()`, `bufload()` (`eval/buffer.c`), `getbufvar()`,
//! `setbufvar()` (`eval/vars.c`), `getbufinfo()` (`eval/buffer.c`) and `getwininfo()` (`eval/window.c`).

use super::{
    Value,
    funcs::{check_str_or_nr, int},
    value::DictMap,
};
use crate::editor::Editor;

fn dict(items: Vec<(&str, Value)>) -> Value {
    let mut d = DictMap::new();
    for (k, v) in items {
        d.insert(k.into(), v);
    }
    Value::dict(d)
}

/// The buffer-local options of Neovim and the value a new buffer has (`tools/probe_bufopts.vim`).
static BUFOPTS: std::sync::LazyLock<Vec<(&'static str, Lit)>> = std::sync::LazyLock::new(|| {
    include_str!("bufopts.table")
        .lines()
        .filter(|l| !l.starts_with('"'))
        .filter_map(|l| {
            let (k, v) = l.split_once('=')?;
            let lit = match v.strip_prefix('\'') {
                Some(s) => Lit::Str(s.strip_suffix('\'')?.replace("''", "'")),
                None => Lit::Int(v.parse().ok()?),
            };
            Some((k, lit))
        })
        .collect()
});

enum Lit {
    Int(i64),
    Str(String),
}

impl Editor {
    /// `get_winbuf_options(true)`: a Dictionary of every buffer-local option. rim has a part of them: those it has give their
    /// value, the others the one a new buffer has in Neovim (they cannot change here: `:set` of them is `E355`).
    fn buffer_options_dict(&mut self) -> Value {
        self.opts_in();
        let mut m = DictMap::new();
        for (k, lit) in BUFOPTS.iter() {
            let v = self.buf.opts.lookup(k).unwrap_or_else(|| match lit {
                Lit::Int(n) => int(*n),
                Lit::Str(s) => Value::Str(s.as_str().into()),
            });
            m.insert((*k).into(), v);
        }
        Value::dict(m)
    }

    /// `buflist_findlnum`: the line the buffer remembers for the window (the first one that was in it).
    fn buflist_findlnum(&self, id: usize) -> i64 {
        if id == self.buf.id {
            return self.win.line as i64 + 1;
        }
        let Some(b) = self.buffer(id) else { return 1 };
        // `find_wininfo`: this window's entry, else the first one; none is line 1.
        b.wininfo.iter().find(|w| w.win == Some(self.win.id)).or(b.wininfo.first()).map_or(1, |w| w.lnum as i64)
    }

    /// `get_buffer_info`.
    fn get_buffer_info(&self, id: usize) -> Value {
        let b = self.buffer(id).expect("a known buffer");
        let windows: Vec<Value> = self.window_ids().into_iter().filter(|w| self.win_buf(*w) == id).map(|w| int(w as i64)).collect();
        dict(vec![
            ("bufnr", int(id as i64)),
            ("name", Value::Str(b.path.as_ref().map(|p| p.display().to_string()).unwrap_or_default().into())),
            ("lnum", int(self.buflist_findlnum(id))),
            ("linecount", int(if b.unloaded { 1 } else { b.doc.text().line_count() as i64 })),
            ("loaded", int(i64::from(!b.unloaded))),
            ("listed", int(i64::from(b.listed))),
            ("changed", int(i64::from(b.is_dirty()))),
            ("changedtick", int(b.changedtick as i64)),
            ("hidden", int(i64::from(!b.unloaded && windows.is_empty()))),
            ("command", int(0)),
            ("variables", {
                b.sync_tick();
                Value::Dict(b.vars.clone())
            }),
            ("windows", Value::list(windows)),
            ("lastused", int(b.last_used)),
        ])
    }

    fn win_ref(&self, id: usize) -> &crate::editor::windows::Window {
        if id == self.win.id { &self.win } else { self.windows.iter().find(|w| w.id == id).expect("a known window") }
    }

    fn win_view_of(&self, id: usize) -> (usize, usize) {
        let w = self.win_ref(id);
        (w.top, w.left)
    }

    fn win_number_opt(&self, id: usize) -> bool {
        let w = self.win_ref(id);
        w.opts.number || w.opts.relativenumber
    }

    fn win_vars_of(&self, id: usize) -> super::Vars {
        self.win_ref(id).vars.clone()
    }

    /// `new_scratch` for `bufadd('')`: no name, not listed, not loaded.
    fn new_scratch_unlisted(&mut self) -> usize {
        let id = self.new_scratch();
        if let Some(b) = self.buffer_mut(id) {
            (b.listed, b.unloaded, b.changedtick, b.never_loaded) = (false, true, 1, true);
        }
        id
    }

    /// `buf_ensure_loaded`: a buffer that is not loaded is read.
    fn buf_ensure_loaded(&mut self, id: usize) {
        if self.buffer(id).is_some_and(|b| b.unloaded) {
            self.with_buffer(id, |e| e.load_current());
        }
    }

    /// `w_botline - 1` of window `id` (`comp_botline`): the last line that is shown whole from the top line, `height` rows
    /// of `width` columns; the top line when it alone is too tall is not counted, so that is the line before it.
    fn win_botline(&mut self, id: usize, height: usize, width: usize) -> usize {
        self.with_window(id, |e| {
            let (text_w, rows) = (e.win.text_w, e.win.rows);
            (e.win.text_w, e.win.rows) = (width, height);
            let (top, last) = (e.win.top.min(e.line_count() - 1), e.line_count() - 1);
            let mut used = 0;
            let mut bottom = top as i64 - 1;
            for n in top..=last {
                used += e.height_to(n, height + 1).saturating_sub(if n == top { e.win.top_sub } else { 0 });
                if used > height {
                    break;
                }
                bottom = n as i64;
            }
            (e.win.text_w, e.win.rows) = (text_w, rows);
            (bottom + 1) as usize
        })
    }

    /// The buffer window `id` shows.
    fn win_buf(&self, id: usize) -> usize {
        if id == self.win.id { self.buf.id } else { self.windows.iter().find(|w| w.id == id).map_or(0, |w| w.buf) }
    }
}

pub(super) fn f_bufadd(e: &mut Editor, a: &[Value]) -> Value {
    let name = e.tv_str(&a[0]);
    if name.is_empty() {
        return int(e.new_scratch_unlisted() as i64);
    }
    let path = crate::editor::fname(&name);
    // `buflist_new`: a name that is in the list gives its buffer.
    let found = e.all_buffers().iter().find(|b| b.path.as_deref().is_some_and(|p| crate::editor::buffers::same_file(p, &path))).map(|b| b.id);
    int(found.unwrap_or_else(|| {
        let id = e.buflist_add(&path.display().to_string());
        e.set_sfname(id, &name);
        id
    }) as i64)
}

pub(super) fn f_bufload(e: &mut Editor, a: &[Value]) -> Value {
    let Some(id) = e.tv_get_buf(&a[0]) else {
        let s = e.tv_str(&a[0]);
        e.error(format!("E158: Invalid buffer name: {s}"));
        return int(0);
    };
    e.buf_ensure_loaded(id);
    int(0)
}

/// `get_var_from` for a buffer: the variable, the option or all of them; `default` when there is none.
pub(super) fn f_getbufvar(e: &mut Editor, a: &[Value]) -> Value {
    let name = e.str_chk(&a[1]);
    let buf = if check_str_or_nr(e, &a[0]) { e.tv_get_buf(&a[0]) } else { None };
    let found = match (name, buf) {
        (Some(name), Some(id)) => e.with_buffer(id, |e| {
            if let Some(opt) = name.strip_prefix('&') {
                if opt.is_empty() {
                    return Some(e.buffer_options_dict());
                }
                e.opts_in();
                return e.buf.opts.lookup(opt);
            }
            e.buf.sync_tick();
            if name.is_empty() {
                return Some(Value::Dict(e.buf.vars.clone()));
            }
            e.buf.vars.borrow().get(name.as_str()).cloned()
        }),
        _ => None,
    };
    found.unwrap_or_else(|| a.get(2).cloned().unwrap_or_else(|| Value::Str(String::new().into())))
}

pub(super) fn f_setbufvar(e: &mut Editor, a: &[Value]) -> Value {
    if !check_str_or_nr(e, &a[0]) {
        return int(0);
    }
    let name = e.str_chk(&a[1]);
    let buf = e.tv_get_buf(&a[0]);
    let (Some(name), Some(id)) = (name, buf) else { return int(0) };
    let value = a[2].clone();
    e.with_buffer(id, |e| {
        if let Some(opt) = name.strip_prefix('&') {
            // `set_option_from_tv`: the errors are given as `:let &opt =` gives them.
            match e.let_option(opt, '=', &value) {
                Ok(Some(m)) if !m.is_empty() => e.error(m),
                Err(m) if !m.is_empty() => e.error(m),
                _ => {}
            }
        } else if let Err(m) = e.set_var(&format!("b:{name}"), value) {
            e.error(m);
        }
    });
    int(0)
}

pub(super) fn f_getbufinfo(e: &mut Editor, a: &[Value]) -> Value {
    let (mut arg_buf, mut filtered) = (None, false);
    let (mut listed, mut loaded, mut modified) = (false, false, false);
    match a.first() {
        Some(Value::Dict(d)) => {
            filtered = true;
            let get = |k: &str| d.borrow().get(k).cloned();
            for (k, flag) in [("buflisted", &mut listed), ("bufloaded", &mut loaded), ("bufmodified", &mut modified)] {
                if let Some(v) = get(k) {
                    *flag = e.nr(&v) != 0;
                }
            }
        }
        Some(v) => {
            if !check_str_or_nr(e, v) {
                return Value::list(Vec::new());
            }
            match e.tv_get_buf(v) {
                Some(id) => arg_buf = Some(id),
                None => return Value::list(Vec::new()),
            }
        }
        None => {}
    }
    let mut out = Vec::new();
    for id in e.all_buffers().iter().map(|b| b.id).collect::<Vec<_>>() {
        if arg_buf.is_some_and(|b| b != id) {
            continue;
        }
        let b = e.buffer(id).expect("listed");
        if filtered && ((loaded && b.unloaded) || (listed && !b.listed) || (modified && !b.is_dirty())) {
            continue;
        }
        out.push(e.get_buffer_info(id));
    }
    Value::list(out)
}

pub(super) fn f_getwininfo(e: &mut Editor, a: &[Value]) -> Value {
    let want = match a.first() {
        None => None,
        Some(v) => {
            let id = e.nr(v);
            match usize::try_from(id).ok().filter(|i| e.window_ids().contains(i)) {
                Some(w) => Some(w),
                None => return Value::list(Vec::new()),
            }
        }
    };
    let rects = e.win_rects();
    let ids = e.window_ids();
    let mut out = Vec::new();
    for (i, &id) in ids.iter().enumerate() {
        if want.is_some_and(|w| w != id) {
            continue;
        }
        let Some(r) = rects.iter().find(|(w, _)| *w == id).map(|(_, r)| *r) else { continue };
        let status = usize::from(e.has_status(ids.len()));
        let (top, left) = e.win_view_of(id);
        let buf = e.win_buf(id);
        let lines = e.buffer(buf).map_or(0, |b| b.doc.text().line_count());
        let height = r.h.saturating_sub(status);
        let number = e.win_number_opt(id);
        let textoff = if number { crate::editor::render::gutter_width(lines) } else { 0 };
        let botline = e.win_botline(id, height, r.w.saturating_sub(textoff));
        let vars = e.win_vars_of(id);
        out.push(dict(vec![
            ("tabnr", int(1)),
            ("winnr", int(i as i64 + 1)),
            ("winid", int(id as i64)),
            ("height", int(height as i64)),
            ("status_height", int(status as i64)),
            ("winrow", int(r.y as i64 + 1)),
            ("topline", int(top as i64 + 1)),
            ("botline", int(botline as i64)),
            ("leftcol", int(left as i64)),
            ("winbar", int(0)),
            ("width", int(r.w as i64)),
            ("bufnr", int(buf as i64)),
            ("wincol", int(r.x as i64 + 1)),
            ("textoff", int(textoff as i64)),
            ("terminal", int(0)),
            ("quickfix", int(0)),
            ("loclist", int(0)),
            ("variables", Value::Dict(vars)),
        ]));
    }
    Value::list(out)
}
