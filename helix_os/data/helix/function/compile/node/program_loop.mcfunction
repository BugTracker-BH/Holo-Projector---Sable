# helix:compile/node/program_loop — Iterate program stmts and compile each
execute store result score helix _prog_len run data get storage helix:vm _walk_node.stmts
scoreboard players set helix _prog_i 0
function helix:compile/node/program_iter
