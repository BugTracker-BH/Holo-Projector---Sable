# helix:lex/read_char_slice — MACRO: extract single character from src at position _i.._j
$data modify storage helix:vm ch set string storage helix:vm src $(_i) $(_j)
