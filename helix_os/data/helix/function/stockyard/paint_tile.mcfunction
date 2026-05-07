# helix:stockyard/paint_tile — fill 8x8 pixels for cell (_sy_col,_sy_row)
scoreboard players operation helix _sy_x0 = helix _sy_col
scoreboard players operation helix _sy_x0 *= helix k8
scoreboard players operation helix _sy_y0 = helix _sy_row
scoreboard players operation helix _sy_y0 *= helix k8
scoreboard players set helix _sy_dy 0
function helix:stockyard/tile_y_loop
