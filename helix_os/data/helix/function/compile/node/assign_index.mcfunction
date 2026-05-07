# helix:compile/node/assign_index — Compile array index assignment: arr[key] = val
# Stack has val on top. We need: arr, key, val → arr_set
data modify storage helix:vm _aidx_save set from storage helix:vm _walk_node
execute store result score helix _compile_idx run data get storage helix:vm _aidx_save.obj
function helix:compile/walk
data modify storage helix:vm _walk_node set from storage helix:vm _aidx_save
execute store result score helix _compile_idx run data get storage helix:vm _aidx_save.key
function helix:compile/walk
data modify storage helix:vm code append value {op:"arr_set"}
scoreboard players add helix _code_len 1
