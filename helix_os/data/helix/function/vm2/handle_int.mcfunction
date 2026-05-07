# helix:vm2/handle_int — evaluate arithmetic expression and display result
scoreboard players set helix _eval_val 0
function helix:vm2/eval_expr
execute store result storage helix:vm _last_printed int 1 run scoreboard players get helix _eval_val
function helix:vm2/show_int with storage helix:vm
