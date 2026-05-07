# helix:parse/let_stmt — Parse let statement: let name = expr;
function helix:parse/consume
# Read variable name
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
data modify storage helix:vm _let_name set from storage helix:vm _cur_tok.v
function helix:parse/consume
# Skip =
function helix:parse/consume
# Parse value expression
function helix:parse/expr
scoreboard players operation helix _let_val = helix _last_node
# Skip ;
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
execute if data storage helix:vm _cur_tok{t:"DELIM",v:";"} run function helix:parse/consume
# Create let AST node
data modify storage helix:vm ast_heap append value {kind:"let",name:"",val:0}
execute store result storage helix:vm ast_heap[-1].val int 1 run scoreboard players get helix _let_val
data modify storage helix:vm ast_heap[-1].name set from storage helix:vm _let_name
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
