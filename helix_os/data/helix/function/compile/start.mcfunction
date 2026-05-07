# helix:compile/start — Initialize compiler state and begin AST walk from program root
data modify storage helix:vm code set value []
scoreboard players set helix _code_len 0
data modify storage helix:vm _patch_stack set value []
data modify storage helix:vm _break_stack set value []
data modify storage helix:vm _continue_stack set value []
data modify storage helix:vm fn_table set value {}
scoreboard players set helix _compile_idx 0
function helix:compile/walk
data modify storage helix:vm code append value {op:"halt"}
scoreboard players add helix _code_len 1
