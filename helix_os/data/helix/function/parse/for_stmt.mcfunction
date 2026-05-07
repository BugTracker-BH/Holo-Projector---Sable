# helix:parse/for_stmt — Parse for statement: for (init; cond; step) { body }
function helix:parse/consume
function helix:parse/consume
function helix:parse/stmt
scoreboard players operation helix _for_init = helix _last_node
function helix:parse/expr
scoreboard players operation helix _for_cond = helix _last_node
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
execute if data storage helix:vm _cur_tok{t:"DELIM",v:";"} run function helix:parse/consume
function helix:parse/expr_stmt
scoreboard players operation helix _for_step = helix _last_node
function helix:parse/consume
function helix:parse/stmt
scoreboard players operation helix _for_body = helix _last_node
data modify storage helix:vm ast_heap append value {kind:"for",init:0,cond:0,step:0,body:0}
execute store result storage helix:vm ast_heap[-1].init int 1 run scoreboard players get helix _for_init
execute store result storage helix:vm ast_heap[-1].cond int 1 run scoreboard players get helix _for_cond
execute store result storage helix:vm ast_heap[-1].step int 1 run scoreboard players get helix _for_step
execute store result storage helix:vm ast_heap[-1].body int 1 run scoreboard players get helix _for_body
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
