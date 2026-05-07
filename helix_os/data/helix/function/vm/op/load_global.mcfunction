# helix:vm/op/load_global — MACRO: push variable from global (first) frame
$data modify storage helix:vm stack append from storage helix:vm frames[0].locals.$(name)
