# helix:parse/program_loop — Loop parsing statements until EOF token
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
execute if data storage helix:vm _cur_tok{t:"EOF"} run return 0
function helix:parse/stmt
# Append returned AST index to program stmts
execute store result storage helix:vm _stmt_idx int 1 run scoreboard players get helix _last_node
data modify storage helix:vm _prog_stmts_append set value 0
execute store result storage helix:vm _prog_stmts_append int 1 run scoreboard players get helix _last_node
execute store result storage helix:vm _pidx int 1 run scoreboard players get helix _prog_idx
function helix:parse/append_prog_stmt with storage helix:vm
return run function helix:parse/program_loop
