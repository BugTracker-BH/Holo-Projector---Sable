# helix:vm/op/get_field — MACRO: pop struct handle, push field value by name
execute store result score helix _handle run data get storage helix:vm stack[-1].n
data remove storage helix:vm stack[-1]
execute store result storage helix:vm _s_hidx int 1 run scoreboard players get helix _handle
function helix:vm/op/get_field_do with storage helix:vm curr_instr
