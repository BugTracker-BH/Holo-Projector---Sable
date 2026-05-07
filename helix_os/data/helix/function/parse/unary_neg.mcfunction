# helix:parse/unary_neg — Parse unary negation
function helix:parse/consume
function helix:parse/expr_unary
data modify storage helix:vm ast_heap append value {kind:"unary",op:"-",val:0}
execute store result storage helix:vm ast_heap[-1].val int 1 run scoreboard players get helix _last_node
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
