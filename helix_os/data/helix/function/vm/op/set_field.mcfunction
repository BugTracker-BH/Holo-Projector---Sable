# helix:vm/op/set_field — Pop value, pop struct handle, set field by name
data modify storage helix:vm _field_val set from storage helix:vm stack[-1]
data remove storage helix:vm stack[-1]
execute store result score helix _handle run data get storage helix:vm stack[-1].n
data remove storage helix:vm stack[-1]
execute store result storage helix:vm _s_hidx int 1 run scoreboard players get helix _handle
function helix:vm/op/set_field_do with storage helix:vm curr_instr
