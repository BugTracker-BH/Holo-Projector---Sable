# helix:vm/op/store — MACRO: pop stack top and store into current frame locals
$data modify storage helix:vm frames[-1].locals.$(name) set from storage helix:vm stack[-1]
data remove storage helix:vm stack[-1]
