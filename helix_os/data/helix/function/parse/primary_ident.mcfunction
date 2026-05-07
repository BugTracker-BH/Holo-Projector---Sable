# helix:parse/primary_ident — Create identifier AST node
data modify storage helix:vm ast_heap append value {kind:"ident",name:""}
data modify storage helix:vm ast_heap[-1].name set from storage helix:vm _cur_tok.v
function helix:parse/consume
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
