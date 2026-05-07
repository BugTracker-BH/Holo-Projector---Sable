# helix:compile/node/struct_lit — Compile struct literal (placeholder: emit new_struct)
data modify storage helix:vm code append value {op:"new_struct",fields:[]}
data modify storage helix:vm code[-1].fields set from storage helix:vm _walk_node.fields
scoreboard players add helix _code_len 1
