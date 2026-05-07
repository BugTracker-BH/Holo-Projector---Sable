# helix:parse/const_stmt — Parse const statement: const NAME = expr;
function helix:parse/consume
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
data modify storage helix:vm _const_name set from storage helix:vm _cur_tok.v
function helix:parse/consume
function helix:parse/consume
function helix:parse/expr
scoreboard players operation helix _const_val = helix _last_node
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
execute if data storage helix:vm _cur_tok{t:"DELIM",v:";"} run function helix:parse/consume
data modify storage helix:vm ast_heap append value {kind:"const",name:"",val:0}
execute store result storage helix:vm ast_heap[-1].val int 1 run scoreboard players get helix _const_val
data modify storage helix:vm ast_heap[-1].name set from storage helix:vm _const_name
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
