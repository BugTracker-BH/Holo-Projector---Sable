# helix:vm/op/new_array — MACRO: create array from top sz stack values
$scoreboard players set helix _arr_sz $(sz)
data modify storage helix:vm arrays append value {items:[]}
execute store result score helix _arr_handle run data get storage helix:vm arrays
scoreboard players remove helix _arr_handle 1
function helix:vm/op/new_array_fill
data modify storage helix:vm stack append value {t:"arr",n:0}
execute store result storage helix:vm stack[-1].n int 1 run scoreboard players get helix _arr_handle
