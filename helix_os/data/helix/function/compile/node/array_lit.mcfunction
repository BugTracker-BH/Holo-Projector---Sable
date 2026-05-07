# helix:compile/node/array_lit — Compile array literal: push each element, emit new_array
data modify storage helix:vm _arrlit_save set from storage helix:vm _walk_node
execute store result score helix _arr_sz run data get storage helix:vm _arrlit_save.elems
scoreboard players set helix _arr_i 0
function helix:compile/node/array_lit_loop
data modify storage helix:vm code append value {op:"new_array",sz:0}
execute store result storage helix:vm code[-1].sz int 1 run scoreboard players get helix _arr_sz
scoreboard players add helix _code_len 1
