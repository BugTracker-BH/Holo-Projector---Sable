# helix:parse/primary_null — Create null literal AST node
data modify storage helix:vm ast_heap append value {kind:"null"}
function helix:parse/consume
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
