# helix:parse/skip_semi — Consume optional trailing semicolon
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
execute if data storage helix:vm _cur_tok{t:"DELIM",v:";"} run function helix:parse/consume
