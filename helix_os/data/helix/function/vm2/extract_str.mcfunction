# helix:vm2/extract_str — MACRO: pull substring [_i,_j) into _last_printed
$data modify storage helix:vm _last_printed set string storage helix:vm src $(_i) $(_j)
