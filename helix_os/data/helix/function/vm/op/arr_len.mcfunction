# helix:vm/op/arr_len — Pop array handle, push its length
execute store result score helix _handle run data get storage helix:vm stack[-1].n
data remove storage helix:vm stack[-1]
execute store result storage helix:vm _arr_hidx int 1 run scoreboard players get helix _handle
function helix:vm/op/arr_len_do with storage helix:vm
