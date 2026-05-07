# helix:parse/start — Initialize parser state and begin recursive descent parsing
scoreboard players set helix _tok_idx 0
data modify storage helix:vm ast_heap set value []
scoreboard players set helix _ast_next 0
function helix:parse/program
