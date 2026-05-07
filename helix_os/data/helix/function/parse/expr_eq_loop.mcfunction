# helix:parse/expr_eq_loop — Loop consuming == or != operators
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
scoreboard players set helix _is_eq_op 0
execute if data storage helix:vm _cur_tok{t:"OP",v:"=="} run scoreboard players set helix _is_eq_op 1
execute if data storage helix:vm _cur_tok{t:"OP",v:"!="} run scoreboard players set helix _is_eq_op 1
execute unless score helix _is_eq_op matches 1 run return 0
scoreboard players operation helix _binop_left = helix _last_node
data modify storage helix:vm _binop_op set from storage helix:vm _cur_tok.v
function helix:parse/consume
function helix:parse/expr_cmp
scoreboard players operation helix _binop_right = helix _last_node
data modify storage helix:vm ast_heap append value {kind:"binop",op:"",l:0,r:0}
data modify storage helix:vm ast_heap[-1].op set from storage helix:vm _binop_op
execute store result storage helix:vm ast_heap[-1].l int 1 run scoreboard players get helix _binop_left
execute store result storage helix:vm ast_heap[-1].r int 1 run scoreboard players get helix _binop_right
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
return run function helix:parse/expr_eq_loop
