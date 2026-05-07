# helix:vm/error/stack_overflow — Halt VM with stack overflow error
data modify storage helix:vm error set value "Stack overflow"
scoreboard players set helix halted 1
function helix:util/report_error
execute if score helix_term enabled matches 1 run function helix_term:bridge/error
