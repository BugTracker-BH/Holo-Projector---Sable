# helix:vm/op/call_bind_1 — Bind 1 argument: pop and store as first param
data modify storage helix:vm frames[-1].locals._p0 set from storage helix:vm stack[-1]
data remove storage helix:vm stack[-1]
