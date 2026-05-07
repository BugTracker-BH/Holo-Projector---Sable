# helix:compile/node/array_lit_loop — Compile each element of array literal
execute if score helix _arr_i >= helix _arr_sz run return 0
execute store result storage helix:vm _ai int 1 run scoreboard players get helix _arr_i
function helix:compile/node/get_arr_elem with storage helix:vm
execute store result score helix _compile_idx run data get storage helix:vm _elem_ref
function helix:compile/walk
data modify storage helix:vm _walk_node set from storage helix:vm _arrlit_save
scoreboard players add helix _arr_i 1
return run function helix:compile/node/array_lit_loop
