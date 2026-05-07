# helix:vm/op/store_global — MACRO: store stack top into global frame
$data modify storage helix:vm frames[0].locals.$(name) set from storage helix:vm stack[-1]
data remove storage helix:vm stack[-1]
