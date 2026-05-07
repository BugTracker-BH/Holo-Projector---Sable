# helix:parse/return_stmt — Parse return statement: return expr;
function helix:parse/consume
scoreboard players set helix _ret_val -1
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
execute unless data storage helix:vm _cur_tok{t:"DELIM",v:";"} run function helix:parse/return_expr
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
execute if data storage helix:vm _cur_tok{t:"DELIM",v:";"} run function helix:parse/consume
data modify storage helix:vm ast_heap append value {kind:"return",val:-1}
execute store result storage helix:vm ast_heap[-1].val int 1 run scoreboard players get helix _ret_val
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
