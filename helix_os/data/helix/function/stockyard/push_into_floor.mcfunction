# helix:stockyard/push_into_floor — move box to floor cell, player to old box cell
playsound minecraft:block.wood.place master @a ~ ~ ~ 0.8 0.9
playsound minecraft:block.barrel.close master @a ~ ~ ~ 0.5 1.2
execute store result storage helix:vm _sy_idx int 1 run scoreboard players get helix _sy_idx2
function helix:stockyard/set_box with storage helix:vm
function helix:stockyard/do_step
