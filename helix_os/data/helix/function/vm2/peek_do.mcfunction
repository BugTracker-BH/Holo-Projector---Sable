# helix:vm2/peek_do — MACRO: extract substring [_i,_j) into _ch
$data modify storage helix:vm _ch set string storage helix:vm src $(_i) $(_j)
