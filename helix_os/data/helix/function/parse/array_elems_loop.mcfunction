# helix:parse/array_elems_loop — Parse array elements until ]
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
execute if data storage helix:vm _cur_tok{t:"DELIM",v:"]"} run return 0
function helix:parse/expr
execute store result storage helix:vm _elem_idx int 1 run scoreboard players get helix _last_node
data modify storage helix:vm _arr_elems append from storage helix:vm _elem_idx
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
execute if data storage helix:vm _cur_tok{t:"DELIM",v:","} run function helix:parse/consume
return run function helix:parse/array_elems_loop
