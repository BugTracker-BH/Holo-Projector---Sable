# helix:compile/node/bool_lit — Compile boolean literal: emit push_bool
data modify storage helix:vm code append value {op:"push_bool",b:0}
data modify storage helix:vm code[-1].b set from storage helix:vm _walk_node.b
scoreboard players add helix _code_len 1
