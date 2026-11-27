//! The `v:` variables: the table of `eval/vars.c` (`vimvars[]`) with the type of each and whether it is read-only, and
//! their start values. Those that need a subsystem rim does not have (`v:servername`, `v:lua`, `v:event`...) keep the
//! value of their type. A Number, String, List or Dictionary the table does not tell is a `VAR_UNKNOWN` one.

use super::{Value, value::DictMap};

#[derive(Clone, Copy, PartialEq)]
pub(super) enum VType {
    Num,
    Str,
    List,
    Dict,
    Bool,
    Special,
    /// `v:val` and `v:key`: no value until a `filter()` or `map()` gives one.
    Unknown,
    Blob,
    Partial,
}

/// (name, type, flags): `RO` or `RO_SBX` (read-only in the sandbox: writable here), `COMPAT` (also without `v:`).
pub(super) const VIMVARS: &[(&str, VType, u8)] = &[
    ("count", VType::Num, 2),
    ("count1", VType::Num, 2),
    ("prevcount", VType::Num, 2),
    ("errmsg", VType::Str, 0),
    ("warningmsg", VType::Str, 0),
    ("statusmsg", VType::Str, 0),
    ("shell_error", VType::Num, 2),
    ("this_session", VType::Str, 0),
    ("version", VType::Num, 3),
    ("lnum", VType::Num, 4),
    ("termresponse", VType::Str, 2),
    ("termrequest", VType::Str, 2),
    ("fname", VType::Str, 2),
    ("lang", VType::Str, 2),
    ("lc_time", VType::Str, 2),
    ("ctype", VType::Str, 2),
    ("charconvert_from", VType::Str, 2),
    ("charconvert_to", VType::Str, 2),
    ("fname_in", VType::Str, 2),
    ("fname_out", VType::Str, 2),
    ("fname_new", VType::Str, 2),
    ("fname_diff", VType::Str, 2),
    ("cmdarg", VType::Str, 2),
    ("foldstart", VType::Num, 4),
    ("foldend", VType::Num, 4),
    ("folddashes", VType::Str, 4),
    ("foldlevel", VType::Num, 4),
    ("progname", VType::Str, 2),
    ("servername", VType::Str, 2),
    ("dying", VType::Num, 2),
    ("exception", VType::Str, 2),
    ("throwpoint", VType::Str, 2),
    ("register", VType::Str, 2),
    ("cmdbang", VType::Num, 2),
    ("insertmode", VType::Str, 2),
    ("val", VType::Unknown, 2),
    ("key", VType::Unknown, 2),
    ("profiling", VType::Num, 2),
    ("fcs_reason", VType::Str, 2),
    ("fcs_choice", VType::Str, 0),
    ("beval_bufnr", VType::Num, 2),
    ("beval_winnr", VType::Num, 2),
    ("beval_winid", VType::Num, 2),
    ("beval_lnum", VType::Num, 2),
    ("beval_col", VType::Num, 2),
    ("beval_text", VType::Str, 2),
    ("scrollstart", VType::Str, 0),
    ("swapname", VType::Str, 2),
    ("swapchoice", VType::Str, 0),
    ("swapcommand", VType::Str, 2),
    ("char", VType::Str, 0),
    ("mouse_win", VType::Num, 0),
    ("mouse_winid", VType::Num, 0),
    ("mouse_lnum", VType::Num, 0),
    ("mouse_col", VType::Num, 0),
    ("operator", VType::Str, 2),
    ("searchforward", VType::Num, 0),
    ("hlsearch", VType::Num, 0),
    ("oldfiles", VType::List, 0),
    ("windowid", VType::Num, 4),
    ("progpath", VType::Str, 2),
    ("completed_item", VType::Dict, 0),
    ("option_new", VType::Str, 2),
    ("option_old", VType::Str, 2),
    ("option_oldlocal", VType::Str, 2),
    ("option_oldglobal", VType::Str, 2),
    ("option_command", VType::Str, 2),
    ("option_type", VType::Str, 2),
    ("errors", VType::List, 0),
    ("false", VType::Bool, 2),
    ("true", VType::Bool, 2),
    ("null", VType::Special, 2),
    ("numbermax", VType::Num, 2),
    ("numbermin", VType::Num, 2),
    ("numbersize", VType::Num, 2),
    ("vim_did_enter", VType::Num, 2),
    ("testing", VType::Num, 0),
    ("t_number", VType::Num, 2),
    ("t_string", VType::Num, 2),
    ("t_func", VType::Num, 2),
    ("t_list", VType::Num, 2),
    ("t_dict", VType::Num, 2),
    ("t_float", VType::Num, 2),
    ("t_bool", VType::Num, 2),
    ("t_blob", VType::Num, 2),
    ("event", VType::Dict, 2),
    ("versionlong", VType::Num, 2),
    ("echospace", VType::Num, 2),
    ("argf", VType::List, 2),
    ("argv", VType::List, 2),
    ("collate", VType::Str, 2),
    ("exiting", VType::Num, 2),
    ("maxcol", VType::Num, 2),
    ("stacktrace", VType::List, 2),
    ("vim_did_init", VType::Num, 2),
    ("stderr", VType::Num, 2),
    ("msgpack_types", VType::Dict, 2),
    ("_null_string", VType::Str, 2),
    ("_null_list", VType::List, 2),
    ("_null_dict", VType::Dict, 2),
    ("_null_blob", VType::Blob, 2),
    ("lua", VType::Partial, 2),
    ("relnum", VType::Num, 2),
    ("virtnum", VType::Num, 2),
    ("starttime", VType::Num, 2),
    ("exitreason", VType::Str, 2),
    ("startreason", VType::Str, 2),
];

pub(super) const RO: u8 = 2;

/// The value of a `v:` variable of a type before anything sets it.
fn default_of(t: VType) -> Option<Value> {
    Some(match t {
        VType::Num => Value::Int(0),
        VType::Str => Value::Str(String::new().into()),
        VType::List => Value::list(Vec::new()),
        VType::Dict => Value::dict(DictMap::new()),
        VType::Bool => Value::Bool(false),
        VType::Special => Value::None,
        VType::Unknown | VType::Blob | VType::Partial => return None,
    })
}

/// `evalvars_init`: the `v:` dictionary with the values Neovim sets at start.
pub(super) fn init() -> DictMap {
    let mut m = DictMap::new();
    for &(name, t, _) in VIMVARS {
        if let Some(v) = default_of(t) {
            m.insert(name.to_string().into(), v);
        }
    }
    let nr = |m: &mut DictMap, k: &str, n: i64| {
        m.insert(k.to_string().into(), Value::Int(n));
    };
    // What depends on the host and the run: the locale (`LC_ALL`, then the category, then `LANG`, as `setlocale` reads
    // them), the program, the start time and the arguments.
    let locale = |cat: &str| {
        ["LC_ALL", cat, "LANG"].iter().find_map(|k| std::env::var(k).ok().filter(|v| !v.is_empty())).unwrap_or_else(|| "C".into())
    };
    for (k, cat) in [("lang", "LC_MESSAGES"), ("ctype", "LC_CTYPE"), ("collate", "LC_COLLATE"), ("lc_time", "LC_TIME")] {
        m.insert(k.to_string().into(), Value::Str(locale(cat).into()));
    }
    m.insert("progname".into(), Value::Str("rim".into()));
    // Miri's isolation has neither the path of the executable nor the real time.
    #[cfg(not(miri))]
    if let Ok(exe) = std::env::current_exe() {
        m.insert("progpath".into(), Value::Str(exe.to_string_lossy().into_owned().into()));
    }
    m.insert("startreason".into(), Value::Str("normal".into()));
    #[cfg(not(miri))]
    if let Ok(t) = std::time::SystemTime::now().duration_since(std::time::UNIX_EPOCH) {
        nr(&mut m, "starttime", i64::try_from(t.as_nanos()).unwrap_or(i64::MAX));
    }
    m.insert("argv".into(), Value::list(std::env::args().map(|s| Value::Str(s.into())).collect()));
    nr(&mut m, "version", 801);
    nr(&mut m, "versionlong", 801 * 10000 + 2424);
    nr(&mut m, "searchforward", 1);
    nr(&mut m, "hlsearch", 1);
    nr(&mut m, "count1", 1);
    for (k, n) in [("t_number", 0), ("t_string", 1), ("t_func", 2), ("t_list", 3), ("t_dict", 4), ("t_float", 5), ("t_bool", 6), ("t_blob", 10)] {
        nr(&mut m, k, n);
    }
    m.insert("false".into(), Value::Bool(false));
    m.insert("true".into(), Value::Bool(true));
    m.insert("null".into(), Value::None);
    nr(&mut m, "numbermax", i64::MAX);
    nr(&mut m, "numbermin", i64::MIN);
    nr(&mut m, "numbersize", 64);
    nr(&mut m, "maxcol", 2_147_483_647);
    m
}

/// What `:let v:name = ...` gives when it cannot: E461 for a name that is none, E46 for a read-only one. The type of
/// the variable otherwise (`before_set_vvar` converts to it).
pub(super) fn check_set(name: &str) -> Result<VType, String> {
    let Some(&(_, t, flags)) = VIMVARS.iter().find(|(n, _, _)| *n == name) else {
        return Err(format!("E461: Illegal variable name: v:{name}"));
    };
    if flags & RO != 0 {
        return Err(format!("E46: Cannot change read-only variable \"v:{name}\""));
    }
    Ok(t)
}

/// `var_check_ro` of a `v:` variable that exists.
pub(super) fn is_ro(name: &str) -> bool {
    VIMVARS.iter().any(|&(n, _, flags)| n == name && flags & RO != 0)
}
