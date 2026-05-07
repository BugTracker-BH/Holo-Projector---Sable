# helix:parse/postfix_member — Parse member access: expr.field
scoreboard players operation helix _mem_obj = helix _last_node
function helix:parse/consume
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
data modify storage helix:vm _mem_field set from storage helix:vm _cur_tok.v
function helix:parse/consume
data modify storage helix:vm ast_heap append value {kind:"member",obj:0,field:""}
execute store result storage helix:vm ast_heap[-1].obj int 1 run scoreboard players get helix _mem_obj
data modify storage helix:vm ast_heap[-1].field set from storage helix:vm _mem_field
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
