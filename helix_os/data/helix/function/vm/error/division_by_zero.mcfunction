# helix:vm/error/division_by_zero — Halt VM with division by zero error
data modify storage helix:vm error set value "Division by zero"
scoreboard players set helix halted 1
function helix:util/report_error
execute if score helix_term enabled matches 1 run function helix_term:bridge/error
