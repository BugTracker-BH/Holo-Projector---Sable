# helix:parse/struct_fields_loop — Parse struct field names until }
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
execute if data storage helix:vm _cur_tok{t:"DELIM",v:"}"} run return 0
data modify storage helix:vm _struct_fields append from storage helix:vm _cur_tok.v
function helix:parse/consume
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
execute if data storage helix:vm _cur_tok{t:"DELIM",v:","} run function helix:parse/consume
return run function helix:parse/struct_fields_loop
