# helix:parse/break_stmt — Parse break statement
function helix:parse/consume
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
execute if data storage helix:vm _cur_tok{t:"DELIM",v:";"} run function helix:parse/consume
data modify storage helix:vm ast_heap append value {kind:"break"}
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
