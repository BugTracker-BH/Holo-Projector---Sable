# helix:stockyard/do_step — move player to (_sy_nx,_sy_ny); update grid
# Set old player cell to 0 (or 3 if was on target — simplified to 0)
scoreboard players operation helix _sy_old_idx = helix sy_py
scoreboard players operation helix _sy_old_idx *= helix k16
scoreboard players operation helix _sy_old_idx += helix sy_px
execute store result storage helix:vm _sy_idx int 1 run scoreboard players get helix _sy_old_idx
function helix:stockyard/clear_cell with storage helix:vm
# Set new cell to 4
execute store result storage helix:vm _sy_idx int 1 run scoreboard players get helix _sy_target_idx
function helix:stockyard/set_player with storage helix:vm
scoreboard players operation helix sy_px = helix _sy_nx
scoreboard players operation helix sy_py = helix _sy_ny
