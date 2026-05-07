# helix:compile/node/index — Compile array index: compile obj, compile key, emit arr_get
data modify storage helix:vm _idx_save set from storage helix:vm _walk_node
execute store result score helix _compile_idx run data get storage helix:vm _idx_save.obj
function helix:compile/walk
data modify storage helix:vm _walk_node set from storage helix:vm _idx_save
execute store result score helix _compile_idx run data get storage helix:vm _idx_save.key
function helix:compile/walk
data modify storage helix:vm code append value {op:"arr_get"}
scoreboard players add helix _code_len 1
