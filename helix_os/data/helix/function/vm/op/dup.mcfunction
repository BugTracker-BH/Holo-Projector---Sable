# helix:vm/op/dup — Duplicate the top stack value
data modify storage helix:vm stack append from storage helix:vm stack[-1]
