# helix:parse/while_stmt — Parse while statement: while (cond) { body }
function helix:parse/consume
function helix:parse/consume
function helix:parse/expr
scoreboard players operation helix _while_cond = helix _last_node
function helix:parse/consume
function helix:parse/stmt
scoreboard players operation helix _while_body = helix _last_node
data modify storage helix:vm ast_heap append value {kind:"while",cond:0,body:0}
execute store result storage helix:vm ast_heap[-1].cond int 1 run scoreboard players get helix _while_cond
execute store result storage helix:vm ast_heap[-1].body int 1 run scoreboard players get helix _while_body
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
