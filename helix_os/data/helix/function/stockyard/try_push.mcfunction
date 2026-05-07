# helix:stockyard/try_push — check 2 cells ahead; if empty/target, push box
scoreboard players operation helix _sy_nx2 = helix _sy_nx
scoreboard players operation helix _sy_nx2 += helix _sy_dx
scoreboard players operation helix _sy_ny2 = helix _sy_ny
scoreboard players operation helix _sy_ny2 += helix _sy_dy
scoreboard players operation helix _sy_idx2 = helix _sy_ny2
scoreboard players operation helix _sy_idx2 *= helix k16
scoreboard players operation helix _sy_idx2 += helix _sy_nx2
execute store result storage helix:vm _sy_idx int 1 run scoreboard players get helix _sy_idx2
function helix:stockyard/get_cell with storage helix:vm
execute if data storage helix:vm {_sy_cell:0} run function helix:stockyard/push_into_floor
execute if data storage helix:vm {_sy_cell:3} run function helix:stockyard/push_into_target
