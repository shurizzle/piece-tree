//! Conversions of a value (`tv_get_number_chk`, `tv_get_float`, `tv_get_string_chk`) with the message as the error,
//! for the expression evaluator, which gives the messages itself (see `Fail` in `expr.rs`).

use piece_tree::{Regex, Text};

use super::{Res, Value, str_to_int};
use crate::editor::Editor;

impl Editor {
    /// `tv_get_number_chk`.
    pub(in crate::editor) fn to_int(&self, v: &Value) -> Res<i64> {
        match v {
            Value::Int(n) => Ok(*n),
            Value::Float(_) => Err("E805: Using a Float as a Number".into()),
            Value::Str(s) => Ok(str_to_int(s)),
            Value::Bool(b) => Ok(i64::from(*b)),
            Value::None => Ok(0),
            Value::Func(_) | Value::Partial(_) => Err("E703: Using a Funcref as a Number".into()),
            Value::List(_) => Err("E745: Using a List as a Number".into()),
            Value::Dict(_) => Err("E728: Using a Dictionary as a Number".into()),
        }
    }

    /// `tv_get_float`: only a Number or a Float is one.
    pub(super) fn to_float(&self, v: &Value) -> Res<f64> {
        match v {
            Value::Float(f) => Ok(*f),
            Value::Int(n) => Ok(*n as f64),
            Value::Str(_) => Err("E892: Using a String as a Float".into()),
            Value::Func(_) | Value::Partial(_) => Err("E891: Using a Funcref as a Float".into()),
            Value::List(_) => Err("E893: Using a List as a Float".into()),
            Value::Dict(_) => Err("E894: Using a Dictionary as a Float".into()),
            Value::Bool(_) => Err("E362: Using a boolean value as a Float".into()),
            Value::None => Err("E907: Using a special value as a Float".into()),
        }
    }

    /// `tv_get_float` as C has it: the message is given at once and the value is 0.
    pub(super) fn tv_get_float(&mut self, v: &Value) -> f64 {
        self.to_float(v).unwrap_or_else(|m| {
            self.error(m);
            0.0
        })
    }

    /// `tv_get_string_chk`.
    pub(in crate::editor) fn to_string(&self, v: &Value) -> Res<String> {
        match v {
            Value::Func(_) | Value::Partial(_) => Err("E729: Using a Funcref as a String".into()),
            Value::List(_) => Err("E730: Using a List as a String".into()),
            Value::Dict(_) => Err("E731: Using a Dictionary as a String".into()),
            v => Ok(v.text()),
        }
    }

    /// Evaluates `src`; the error is the message to show.
    pub(in crate::editor) fn eval(&mut self, src: &str) -> Res<Value> {
        self.eval0(src).0
    }

    /// The text of the value of `src`, as inserted.
    pub(in crate::editor) fn eval_text(&mut self, src: &str) -> Res<String> {
        Ok(self.eval(src)?.text())
    }

    /// The truth of a value, as `tv_get_number_chk` gives it.
    pub(super) fn truthy(&self, v: &Value) -> Res<bool> {
        Ok(self.to_int(v)? != 0)
    }

    /// The first match of `pat` in `s` as a byte range.
    pub(super) fn regex_find(&self, s: &str, pat: &str, ic: bool) -> Res<Option<std::ops::Range<usize>>> {
        let re = Regex::new(&if ic { format!("(?i){pat}") } else { pat.to_string() }).map_err(|_| format!("E383: Invalid search string: {pat}"))?;
        Ok(Text::from(s).find_from(&re, 0))
    }
}
