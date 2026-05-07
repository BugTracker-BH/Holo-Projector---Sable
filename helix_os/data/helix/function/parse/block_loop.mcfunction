# helix:parse/block_loop — Loop parsing statements inside a block until }
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
execute if data storage helix:vm _cur_tok{t:"DELIM",v:"}"} run return 0
execute if data storage helix:vm _cur_tok{t:"EOF"} run return 0
function helix:parse/stmt
execute store result storage helix:vm _prog_stmts_append int 1 run scoreboard players get helix _last_node
execute store result storage helix:vm _pidx int 1 run scoreboard players get helix _blk_idx
function helix:parse/append_prog_stmt with storage helix:vm
return run function helix:parse/block_loop
