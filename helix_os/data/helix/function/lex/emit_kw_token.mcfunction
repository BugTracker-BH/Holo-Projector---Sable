# helix:lex/emit_kw_token — MACRO: emit keyword token from _ident_val
$data modify storage helix:vm tokens append value {t:"KW",v:"$(_ident_val)"}
