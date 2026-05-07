# helix:parse/if_stmt — Parse if statement: if (cond) { then } else { else }
function helix:parse/consume
# Skip (
function helix:parse/consume
# Parse condition
function helix:parse/expr
scoreboard players operation helix _if_cond = helix _last_node
# Skip )
function helix:parse/consume
# Parse then branch
function helix:parse/stmt
scoreboard players operation helix _if_then = helix _last_node
# Check for else
scoreboard players set helix _if_else -1
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
execute if data storage helix:vm _cur_tok{t:"KW",v:"else"} run function helix:parse/if_else_branch
# Create if AST node
data modify storage helix:vm ast_heap append value {kind:"if",cond:0,then:0,else:-1}
execute store result storage helix:vm ast_heap[-1].cond int 1 run scoreboard players get helix _if_cond
execute store result storage helix:vm ast_heap[-1].then int 1 run scoreboard players get helix _if_then
execute store result storage helix:vm ast_heap[-1].else int 1 run scoreboard players get helix _if_else
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
