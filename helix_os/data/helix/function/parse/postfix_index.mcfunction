# helix:parse/postfix_index — Parse array index: expr[key]
scoreboard players operation helix _idx_obj = helix _last_node
function helix:parse/consume
function helix:parse/expr
scoreboard players operation helix _idx_key = helix _last_node
function helix:parse/consume
data modify storage helix:vm ast_heap append value {kind:"index",obj:0,key:0}
execute store result storage helix:vm ast_heap[-1].obj int 1 run scoreboard players get helix _idx_obj
execute store result storage helix:vm ast_heap[-1].key int 1 run scoreboard players get helix _idx_key
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
