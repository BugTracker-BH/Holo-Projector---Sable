# helix:vm/error/array_out_of_bounds — Halt VM with array index error
data modify storage helix:vm error set value "Array index out of bounds"
scoreboard players set helix halted 1
function helix:util/report_error
execute if score helix_term enabled matches 1 run function helix_term:bridge/error
