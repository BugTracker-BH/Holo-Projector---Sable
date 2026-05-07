# helix:vm/op/new_array_fill — Move sz items from stack into the new array (in order)
execute if score helix _arr_sz matches 0 run return 0
# Items on stack are in order: first pushed is deepest. Move from bottom of the group.
execute store result storage helix:vm _arr_hidx int 1 run scoreboard players get helix _arr_handle
function helix:vm/op/new_array_move with storage helix:vm
scoreboard players remove helix _arr_sz 1
return run function helix:vm/op/new_array_fill
