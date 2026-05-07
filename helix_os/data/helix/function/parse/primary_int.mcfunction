# helix:parse/primary_int — Create int literal AST node
data modify storage helix:vm ast_heap append value {kind:"int",n:0}
data modify storage helix:vm ast_heap[-1].n set from storage helix:vm _cur_tok.n
function helix:parse/consume
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
