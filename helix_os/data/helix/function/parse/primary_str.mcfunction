# helix:parse/primary_str — Create string literal AST node
data modify storage helix:vm ast_heap append value {kind:"str",idx:0}
data modify storage helix:vm ast_heap[-1].idx set from storage helix:vm _cur_tok.idx
function helix:parse/consume
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
