# helix:vm/op/new_array_move — MACRO: move stack top into array items (prepend to build order)
$data modify storage helix:vm arrays[$(_arr_hidx)].items prepend from storage helix:vm stack[-1]
data remove storage helix:vm stack[-1]
