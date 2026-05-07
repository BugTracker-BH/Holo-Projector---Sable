# helix:vm/error/null_dereference — Halt VM with null dereference error
data modify storage helix:vm error set value "Null dereference"
scoreboard players set helix halted 1
function helix:util/report_error
execute if score helix_term enabled matches 1 run function helix_term:bridge/error
