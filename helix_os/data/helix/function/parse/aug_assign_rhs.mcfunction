# helix:parse/aug_assign_rhs — Parse augmented assignment: target OP= value
scoreboard players operation helix _assign_target = helix _last_node
data modify storage helix:vm _aug_op set from storage helix:vm _cur_tok.v
function helix:parse/consume
function helix:parse/expr
scoreboard players operation helix _assign_val = helix _last_node
data modify storage helix:vm ast_heap append value {kind:"aug",op:"",target:0,val:0}
# Extract the base operator (strip trailing =)
data modify storage helix:vm ast_heap[-1].op set string storage helix:vm _aug_op 0 1
execute store result storage helix:vm ast_heap[-1].target int 1 run scoreboard players get helix _assign_target
execute store result storage helix:vm ast_heap[-1].val int 1 run scoreboard players get helix _assign_val
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
