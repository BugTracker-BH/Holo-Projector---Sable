# helix:parse/expr_postfix_loop — Loop checking for postfix operators: ( [ .
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
# Function call
execute if data storage helix:vm _cur_tok{t:"DELIM",v:"("} run function helix:parse/postfix_call
execute if data storage helix:vm _cur_tok{t:"DELIM",v:"("} run return run function helix:parse/expr_postfix_loop
# Array index
execute if data storage helix:vm _cur_tok{t:"DELIM",v:"["} run function helix:parse/postfix_index
execute if data storage helix:vm _cur_tok{t:"DELIM",v:"["} run return run function helix:parse/expr_postfix_loop
# Member access
execute if data storage helix:vm _cur_tok{t:"DELIM",v:"."} run function helix:parse/postfix_member
execute if data storage helix:vm _cur_tok{t:"DELIM",v:"."} run return run function helix:parse/expr_postfix_loop
