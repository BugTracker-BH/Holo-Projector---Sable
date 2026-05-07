# helix:vm/op/swap — Swap the top two stack values
data modify storage helix:vm _swap_a set from storage helix:vm stack[-1]
data modify storage helix:vm stack[-1] set from storage helix:vm stack[-2]
data modify storage helix:vm stack[-2] set from storage helix:vm _swap_a
