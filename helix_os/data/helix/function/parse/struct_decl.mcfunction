# helix:parse/struct_decl — Parse struct declaration: struct Name { field1, field2 }
function helix:parse/consume
# Read struct name
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
data modify storage helix:vm _struct_name set from storage helix:vm _cur_tok.v
function helix:parse/consume
# Skip {
function helix:parse/consume
# Parse field list
data modify storage helix:vm _struct_fields set value []
function helix:parse/struct_fields_loop
# Skip }
function helix:parse/consume
# Create struct_decl AST node
data modify storage helix:vm ast_heap append value {kind:"struct",name:"",fields:[]}
data modify storage helix:vm ast_heap[-1].name set from storage helix:vm _struct_name
data modify storage helix:vm ast_heap[-1].fields set from storage helix:vm _struct_fields
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
