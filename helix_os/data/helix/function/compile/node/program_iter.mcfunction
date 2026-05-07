# helix:compile/node/program_iter — Compile each statement in a program/block node
execute if score helix _prog_i >= helix _prog_len run return 0
execute store result storage helix:vm _si int 1 run scoreboard players get helix _prog_i
function helix:compile/node/get_stmt_idx with storage helix:vm
execute store result score helix _compile_idx run data get storage helix:vm _stmt_ref
function helix:compile/walk
scoreboard players add helix _prog_i 1
return run function helix:compile/node/program_iter
