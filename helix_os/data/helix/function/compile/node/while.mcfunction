# helix:compile/node/while — Compile while loop: loop_start → cond → jmp_if_false(end) → body → jmp(start)
data modify storage helix:vm _while_save set from storage helix:vm _walk_node
# Record loop start
scoreboard players operation helix _loop_start = helix _code_len
# Push break/continue context
data modify storage helix:vm _break_stack append value []
data modify storage helix:vm _continue_stack append value []
# Compile condition
execute store result score helix _compile_idx run data get storage helix:vm _while_save.cond
function helix:compile/walk
# Emit jmp_if_false to end
data modify storage helix:vm code append value {op:"jmp_if_false",addr:0}
execute store result score helix _while_end_patch run scoreboard players get helix _code_len
scoreboard players add helix _code_len 1
# Compile body
data modify storage helix:vm _walk_node set from storage helix:vm _while_save
execute store result score helix _compile_idx run data get storage helix:vm _while_save.body
function helix:compile/walk
# Jump back to loop start
execute store result storage helix:vm _loop_start_val int 1 run scoreboard players get helix _loop_start
data modify storage helix:vm code append value {op:"jmp",addr:0}
execute store result storage helix:vm _addr int 1 run scoreboard players get helix _code_len
execute store result storage helix:vm _target int 1 run scoreboard players get helix _loop_start
function helix:compile/patch with storage helix:vm
scoreboard players add helix _code_len 1
# Backpatch jmp_if_false to here
execute store result storage helix:vm _addr int 1 run scoreboard players get helix _while_end_patch
execute store result storage helix:vm _target int 1 run scoreboard players get helix _code_len
function helix:compile/patch with storage helix:vm
# Patch breaks to here
function helix:compile/patch_breaks
# Patch continues to loop start
function helix:compile/patch_continues
