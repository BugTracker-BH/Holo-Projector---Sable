# helix:vm2/factor_paren — handle ( expr ), saving outer state across recursion
data modify storage helix:vm _save_stack append value 0
execute store result storage helix:vm _save_stack[-1] int 1 run scoreboard players get helix _expr_lhs
data modify storage helix:vm _save_stack append value 0
execute store result storage helix:vm _save_stack[-1] int 1 run scoreboard players get helix _term_lhs
scoreboard players add helix _pos 1
function helix:vm2/eval_expr
execute store result score helix _term_lhs run data get storage helix:vm _save_stack[-1]
data remove storage helix:vm _save_stack[-1]
execute store result score helix _expr_lhs run data get storage helix:vm _save_stack[-1]
data remove storage helix:vm _save_stack[-1]
scoreboard players add helix _pos 1
