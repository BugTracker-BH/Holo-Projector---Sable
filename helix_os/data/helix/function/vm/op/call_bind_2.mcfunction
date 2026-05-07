# helix:vm/op/call_bind_2 — Bind 2 arguments
data modify storage helix:vm frames[-1].locals._p1 set from storage helix:vm stack[-1]
data remove storage helix:vm stack[-1]
data modify storage helix:vm frames[-1].locals._p0 set from storage helix:vm stack[-1]
data remove storage helix:vm stack[-1]
