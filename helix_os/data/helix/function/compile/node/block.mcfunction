# helix:compile/node/block — Compile block: iterate over stmts
data modify storage helix:vm _blk_save set from storage helix:vm _walk_node
execute store result score helix _prog_len run data get storage helix:vm _blk_save.stmts
scoreboard players set helix _prog_i 0
data modify storage helix:vm _walk_node set from storage helix:vm _blk_save
function helix:compile/node/block_iter
