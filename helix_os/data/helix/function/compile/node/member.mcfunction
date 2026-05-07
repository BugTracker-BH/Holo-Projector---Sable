# helix:compile/node/member — Compile member access: compile obj, emit get_field
data modify storage helix:vm _mem_save set from storage helix:vm _walk_node
# Special case: .len → emit arr_len
execute if data storage helix:vm _mem_save{field:"len"} run execute store result score helix _compile_idx run data get storage helix:vm _mem_save.obj
execute if data storage helix:vm _mem_save{field:"len"} run function helix:compile/walk
execute if data storage helix:vm _mem_save{field:"len"} run data modify storage helix:vm code append value {op:"arr_len"}
execute if data storage helix:vm _mem_save{field:"len"} run scoreboard players add helix _code_len 1
execute if data storage helix:vm _mem_save{field:"len"} run return 0
execute store result score helix _compile_idx run data get storage helix:vm _mem_save.obj
function helix:compile/walk
function helix:compile/node/member_emit with storage helix:vm
