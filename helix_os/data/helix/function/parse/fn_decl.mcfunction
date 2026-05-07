# helix:parse/fn_decl — Parse function declaration: fn name(params) { body }
function helix:parse/consume
# Read function name
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
data modify storage helix:vm _fn_name set from storage helix:vm _cur_tok.v
function helix:parse/consume
# Skip (
function helix:parse/consume
# Parse parameter list
data modify storage helix:vm _fn_params set value []
function helix:parse/fn_params_loop
# Skip )
function helix:parse/consume
# Parse body (block)
function helix:parse/stmt
scoreboard players operation helix _fn_body = helix _last_node
# Create fn_decl AST node
data modify storage helix:vm ast_heap append value {kind:"fn_decl",name:"",params:[],body:0}
execute store result storage helix:vm ast_heap[-1].body int 1 run scoreboard players get helix _fn_body
data modify storage helix:vm ast_heap[-1].name set from storage helix:vm _fn_name
data modify storage helix:vm ast_heap[-1].params set from storage helix:vm _fn_params
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
