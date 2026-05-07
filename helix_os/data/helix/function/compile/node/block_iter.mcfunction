# helix:compile/node/block_iter — Iterate block stmts
execute if score helix _prog_i >= helix _prog_len run return 0
execute store result storage helix:vm _si int 1 run scoreboard players get helix _prog_i
function helix:compile/node/get_blk_stmt with storage helix:vm
execute store result score helix _compile_idx run data get storage helix:vm _stmt_ref
function helix:compile/walk
data modify storage helix:vm _walk_node set from storage helix:vm _blk_save
scoreboard players add helix _prog_i 1
return run function helix:compile/node/block_iter
