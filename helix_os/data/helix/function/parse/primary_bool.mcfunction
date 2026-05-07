# helix:parse/primary_bool — Create bool literal AST node
data modify storage helix:vm ast_heap append value {kind:"bool",b:0}
data modify storage helix:vm ast_heap[-1].b set from storage helix:vm _cur_tok.b
function helix:parse/consume
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
