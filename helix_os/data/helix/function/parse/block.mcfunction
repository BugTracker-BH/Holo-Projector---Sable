# helix:parse/block — Parse block: { stmt* }
function helix:parse/consume
data modify storage helix:vm ast_heap append value {kind:"block",stmts:[]}
scoreboard players operation helix _blk_idx = helix _ast_next
scoreboard players add helix _ast_next 1
function helix:parse/block_loop
function helix:parse/consume
scoreboard players operation helix _last_node = helix _blk_idx
