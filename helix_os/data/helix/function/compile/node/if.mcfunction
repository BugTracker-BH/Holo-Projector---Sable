# helix:compile/node/if — Compile if/else: cond → jmp_if_false → then → jmp → else
# Save current walk_node since recursive compile overwrites it
data modify storage helix:vm _if_save set from storage helix:vm _walk_node
# Compile condition
execute store result score helix _compile_idx run data get storage helix:vm _if_save.cond
function helix:compile/walk
# Emit jmp_if_false (to else/end)
data modify storage helix:vm code append value {op:"jmp_if_false",addr:0}
data modify storage helix:vm _patch_stack append value 0
execute store result storage helix:vm _patch_stack[-1] int 1 run scoreboard players get helix _code_len
scoreboard players add helix _code_len 1
# Compile then branch
data modify storage helix:vm _walk_node set from storage helix:vm _if_save
execute store result score helix _compile_idx run data get storage helix:vm _if_save.then
function helix:compile/walk
# Check for else branch
data modify storage helix:vm _walk_node set from storage helix:vm _if_save
execute store result score helix _if_else_idx run data get storage helix:vm _if_save.else
execute if score helix _if_else_idx matches -1 run function helix:compile/backpatch
execute if score helix _if_else_idx matches -1 run return 0
# Has else: emit jmp past else, backpatch false-jump to else start
data modify storage helix:vm code append value {op:"jmp",addr:0}
execute store result score helix _jmp_over_else run scoreboard players get helix _code_len
scoreboard players add helix _code_len 1
function helix:compile/backpatch
# Compile else branch
data modify storage helix:vm _walk_node set from storage helix:vm _if_save
execute store result score helix _compile_idx run data get storage helix:vm _if_save.else
function helix:compile/walk
# Backpatch jmp past else
execute store result storage helix:vm _addr int 1 run scoreboard players get helix _jmp_over_else
execute store result storage helix:vm _target int 1 run scoreboard players get helix _code_len
function helix:compile/patch with storage helix:vm
