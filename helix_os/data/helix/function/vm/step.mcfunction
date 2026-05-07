# helix:vm/step — Execute one instruction, loop safely (max _max_batch per tick)
execute if score helix halted matches 1 run return 0
execute if score helix waiting matches 1 run return 0
execute if score helix _batch >= helix _max_batch run return 0
execute store result score helix _code_len2 run data get storage helix:vm code
execute if score helix pc >= helix _code_len2 run scoreboard players set helix halted 1
execute if score helix halted matches 1 run return 0
execute store result storage helix:vm _pc int 1 run scoreboard players get helix pc
function helix:vm/fetch with storage helix:vm
function helix:vm/dispatch with storage helix:vm curr_instr
scoreboard players add helix pc 1
scoreboard players add helix steps 1
scoreboard players add helix _batch 1
execute if score helix halted matches 0 if score helix waiting matches 0 if score helix _batch < helix _max_batch run function helix:vm/step
