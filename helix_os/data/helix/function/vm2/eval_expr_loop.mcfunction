# helix:vm2/eval_expr_loop — consume + or - operators iteratively
function helix:vm2/peek
execute unless data storage helix:vm {_ch:"+"} unless data storage helix:vm {_ch:"-"} run return 0
scoreboard players operation helix _expr_lhs = helix _eval_val
data modify storage helix:vm _save_stack append from storage helix:vm _ch
scoreboard players add helix _pos 1
function helix:vm2/eval_term
data modify storage helix:vm _expr_op set from storage helix:vm _save_stack[-1]
data remove storage helix:vm _save_stack[-1]
execute if data storage helix:vm {_expr_op:"+"} run function helix:vm2/expr_add
execute if data storage helix:vm {_expr_op:"-"} run function helix:vm2/expr_sub
return run function helix:vm2/eval_expr_loop
