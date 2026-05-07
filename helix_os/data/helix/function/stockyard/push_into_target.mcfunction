# helix:stockyard/push_into_target — box covers target (set to 5), step player
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.8 1.5
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.4
execute store result storage helix:vm _sy_idx int 1 run scoreboard players get helix _sy_idx2
function helix:stockyard/set_box_on_target with storage helix:vm
function helix:stockyard/do_step
