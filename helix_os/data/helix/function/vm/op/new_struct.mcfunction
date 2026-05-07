# helix:vm/op/new_struct — MACRO: allocate struct on heap with given fields
data modify storage helix:vm structs append value {fields:{}}
execute store result score helix _struct_handle run data get storage helix:vm structs
scoreboard players remove helix _struct_handle 1
data modify storage helix:vm stack append value {t:"struct",n:0}
execute store result storage helix:vm stack[-1].n int 1 run scoreboard players get helix _struct_handle
