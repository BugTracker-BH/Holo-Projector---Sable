# helix:compile/node/fn_decl — Compile function declaration: record entry point, emit jmp past body
# Emit jump over function body
data modify storage helix:vm code append value {op:"jmp",addr:0}
data modify storage helix:vm _patch_stack append value 0
execute store result storage helix:vm _patch_stack[-1] int 1 run scoreboard players get helix _code_len
scoreboard players add helix _code_len 1
# Record function entry point
execute store result storage helix:vm _fn_entry int 1 run scoreboard players get helix _code_len
function helix:compile/node/fn_decl_register with storage helix:vm
# Compile function body
execute store result score helix _compile_idx run data get storage helix:vm _walk_node.body
function helix:compile/walk
# Emit implicit return
data modify storage helix:vm code append value {op:"push_null"}
scoreboard players add helix _code_len 1
data modify storage helix:vm code append value {op:"ret"}
scoreboard players add helix _code_len 1
# Backpatch jump over body
function helix:compile/backpatch
