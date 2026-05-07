# helix:parse/postfix_call — Parse function call: expr(args)
scoreboard players operation helix _call_target = helix _last_node
# Get function name from the call target (ident node)
execute store result storage helix:vm _cidx int 1 run scoreboard players get helix _call_target
function helix:parse/get_call_name with storage helix:vm
function helix:parse/consume
data modify storage helix:vm _call_args set value []
function helix:parse/call_args_loop
function helix:parse/consume
data modify storage helix:vm ast_heap append value {kind:"call",name:"",args:[]}
data modify storage helix:vm ast_heap[-1].name set from storage helix:vm _call_name
data modify storage helix:vm ast_heap[-1].args set from storage helix:vm _call_args
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
