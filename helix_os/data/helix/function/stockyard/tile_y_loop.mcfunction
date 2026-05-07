# helix:stockyard/tile_y_loop — fill 8 rows
execute if score helix _sy_dy matches 8.. run return 0
scoreboard players set helix _sy_dx 0
function helix:stockyard/tile_x_loop
scoreboard players add helix _sy_dy 1
return run function helix:stockyard/tile_y_loop
