# helix:vm/run — Execute VM in safe batches. Max 128 ops per tick, then yield.
execute if score helix halted matches 1 run return 0
execute if score helix waiting matches 1 run return 0
scoreboard players set helix _batch 0
function helix:vm/step
execute if score helix halted matches 0 if score helix waiting matches 0 run schedule function helix:vm/run 1t
execute if score helix halted matches 1 run scoreboard players set helix running 0
execute if score helix halted matches 1 run function helix:vm/on_halt
