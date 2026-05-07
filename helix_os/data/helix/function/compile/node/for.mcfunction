# helix:compile/node/for — Compile for loop: init; cond → jmp_if_false → body → step → jmp(cond)
data modify storage helix:vm _for_save set from storage helix:vm _walk_node
# Compile init
execute store result score helix _compile_idx run data get storage helix:vm _for_save.init
function helix:compile/walk
# Record loop condition start
scoreboard players operation helix _loop_start = helix _code_len
# Push break/continue context
data modify storage helix:vm _break_stack append value []
data modify storage helix:vm _continue_stack append value []
# Compile condition
data modify storage helix:vm _walk_node set from storage helix:vm _for_save
execute store result score helix _compile_idx run data get storage helix:vm _for_save.cond
function helix:compile/walk
# Emit jmp_if_false to end
data modify storage helix:vm code append value {op:"jmp_if_false",addr:0}
execute store result score helix _for_end_patch run scoreboard players get helix _code_len
scoreboard players add helix _code_len 1
# Compile body
data modify storage helix:vm _walk_node set from storage helix:vm _for_save
execute store result score helix _compile_idx run data get storage helix:vm _for_save.body
function helix:compile/walk
# Record step start for continue patches
scoreboard players operation helix _step_start = helix _code_len
# Compile step
data modify storage helix:vm _walk_node set from storage helix:vm _for_save
execute store result score helix _compile_idx run data get storage helix:vm _for_save.step
function helix:compile/walk
# Pop step result if it left something on stack
data modify storage helix:vm code append value {op:"pop"}
scoreboard players add helix _code_len 1
# Jump back to condition
execute store result storage helix:vm _loop_start_val int 1 run scoreboard players get helix _loop_start
data modify storage helix:vm code append value {op:"jmp",addr:0}
execute store result storage helix:vm _addr int 1 run scoreboard players get helix _code_len
execute store result storage helix:vm _target int 1 run scoreboard players get helix _loop_start
function helix:compile/patch with storage helix:vm
scoreboard players add helix _code_len 1
# Backpatch jmp_if_false
execute store result storage helix:vm _addr int 1 run scoreboard players get helix _for_end_patch
execute store result storage helix:vm _target int 1 run scoreboard players get helix _code_len
function helix:compile/patch with storage helix:vm
# Patch breaks to here, continues to step_start
function helix:compile/patch_breaks
scoreboard players operation helix _loop_start = helix _step_start
function helix:compile/patch_continues
