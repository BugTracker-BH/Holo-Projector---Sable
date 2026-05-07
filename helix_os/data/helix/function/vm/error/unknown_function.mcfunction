# helix:vm/error/unknown_function — Halt VM with unknown function error
data modify storage helix:vm error set value "Unknown function"
scoreboard players set helix halted 1
function helix:util/report_error
execute if score helix_term enabled matches 1 run function helix_term:bridge/error
