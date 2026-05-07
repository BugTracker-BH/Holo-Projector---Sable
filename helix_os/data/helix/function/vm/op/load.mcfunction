# helix:vm/op/load — MACRO: push variable value from current frame locals
$data modify storage helix:vm stack append from storage helix:vm frames[-1].locals.$(name)
