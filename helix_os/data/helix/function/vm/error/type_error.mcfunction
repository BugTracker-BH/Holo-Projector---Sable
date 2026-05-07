# helix:vm/error/type_error — Halt VM with type error
data modify storage helix:vm error set value "Type error"
scoreboard players set helix halted 1
function helix:util/report_error
execute if score helix_term enabled matches 1 run function helix_term:bridge/error
