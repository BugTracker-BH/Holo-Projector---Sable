# helix:compile/node/int_lit — Compile integer literal: emit push_int
data modify storage helix:vm code append value {op:"push_int",n:0}
data modify storage helix:vm code[-1].n set from storage helix:vm _walk_node.n
scoreboard players add helix _code_len 1
