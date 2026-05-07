# helix:vm/op/arr_get — Pop index, pop array handle, push array[index]
execute store result score helix _idx run data get storage helix:vm stack[-1].n
data remove storage helix:vm stack[-1]
execute store result score helix _handle run data get storage helix:vm stack[-1].n
data remove storage helix:vm stack[-1]
execute store result storage helix:vm _arr_hidx int 1 run scoreboard players get helix _handle
execute store result storage helix:vm _arr_eidx int 1 run scoreboard players get helix _idx
function helix:vm/op/arr_get_do with storage helix:vm
