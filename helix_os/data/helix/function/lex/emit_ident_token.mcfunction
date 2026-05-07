# helix:lex/emit_ident_token — MACRO: emit identifier token from _ident_val
$data modify storage helix:vm tokens append value {t:"IDENT",v:"$(_ident_val)"}
