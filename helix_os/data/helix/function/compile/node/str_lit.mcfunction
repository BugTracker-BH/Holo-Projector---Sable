# helix:compile/node/str_lit — Compile string literal: emit push_str with constant index
data modify storage helix:vm code append value {op:"push_str",idx:0}
data modify storage helix:vm code[-1].idx set from storage helix:vm _walk_node.idx
scoreboard players add helix _code_len 1
