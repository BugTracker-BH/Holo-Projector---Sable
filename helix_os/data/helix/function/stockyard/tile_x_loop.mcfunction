# helix:stockyard/tile_x_loop — fill 8 cols
execute if score helix _sy_dx matches 8.. run return 0
scoreboard players operation helix _sy_x = helix _sy_x0
scoreboard players operation helix _sy_x += helix _sy_dx
scoreboard players operation helix _sy_y = helix _sy_y0
scoreboard players operation helix _sy_y += helix _sy_dy
execute store result storage helix:vm px int 1 run scoreboard players get helix _sy_x
execute store result storage helix:vm py int 1 run scoreboard players get helix _sy_y
function helix:pong/setpx with storage helix:vm
scoreboard players add helix _sy_dx 1
return run function helix:stockyard/tile_x_loop
