# helix:stockyard/try_move — execute movement with push detection, then re-render
execute if score helix sy_active matches 0 run return 0
scoreboard players operation helix _sy_nx = helix sy_px
scoreboard players operation helix _sy_nx += helix _sy_dx
scoreboard players operation helix _sy_ny = helix sy_py
scoreboard players operation helix _sy_ny += helix _sy_dy
# Compute target idx = ny*16 + nx
scoreboard players operation helix _sy_target_idx = helix _sy_ny
scoreboard players operation helix _sy_target_idx *= helix k16
scoreboard players operation helix _sy_target_idx += helix _sy_nx
execute store result storage helix:vm _sy_idx int 1 run scoreboard players get helix _sy_target_idx
function helix:stockyard/get_cell with storage helix:vm
# If wall, do nothing
execute if data storage helix:vm {_sy_cell:1} run playsound minecraft:block.stone.hit master @a ~ ~ ~ 0.7 0.8
execute if data storage helix:vm {_sy_cell:1} run return 0
# If empty floor or target, just move
execute if data storage helix:vm {_sy_cell:0} run playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 0.4 1.5
execute if data storage helix:vm {_sy_cell:0} run function helix:stockyard/do_step
execute if data storage helix:vm {_sy_cell:3} run playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 0.4 1.5
execute if data storage helix:vm {_sy_cell:3} run function helix:stockyard/do_step
# If box (2 or 5), check next cell over for push
execute if data storage helix:vm {_sy_cell:2} run function helix:stockyard/try_push
execute if data storage helix:vm {_sy_cell:5} run function helix:stockyard/try_push
function helix:stockyard/render_full
function helix:stockyard/check_win
