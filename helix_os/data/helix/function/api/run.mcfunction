# helix:api/run — Direct interpreter (replaces broken lex/parse/compile/VM pipeline)
# Handles: println("string"), println(int), println(arith-expr with + - * / and parens)
function helix:vm/init_objectives
scoreboard players set helix k10 10
data modify storage helix:vm _last_printed set value ""
data modify storage helix:vm _err set value ""
data modify storage helix:vm _save_stack set value []
scoreboard players set helix _eval_val 0
scoreboard players set helix _expr_lhs 0
scoreboard players set helix _term_lhs 0
scoreboard players set helix _digit -1
scoreboard players set helix halted 0
scoreboard players set helix running 1
scoreboard players set helix steps 0
scoreboard players set helix pc 0
execute store result score helix _src_len run data get storage helix:vm src
scoreboard players set helix _pos 0
function helix:vm2/main
scoreboard players set helix halted 1
scoreboard players set helix running 0
function helix:vm/on_halt
