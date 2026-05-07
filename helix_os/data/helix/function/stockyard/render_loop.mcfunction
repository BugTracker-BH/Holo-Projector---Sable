# helix:stockyard/render_loop — iterate 144 cells (16 cols x 9 rows)
execute if score helix _sy_i matches 144.. run return 0
scoreboard players operation helix _sy_col = helix _sy_i
scoreboard players operation helix _sy_col %= helix k16
scoreboard players operation helix _sy_row = helix _sy_i
scoreboard players operation helix _sy_row /= helix k16
execute store result storage helix:vm _sy_idx int 1 run scoreboard players get helix _sy_i
function helix:stockyard/get_cell with storage helix:vm
# Color by cell value
data modify storage helix:vm color set value -16777216
execute if data storage helix:vm {_sy_cell:1} run data modify storage helix:vm color set value -8421505
execute if data storage helix:vm {_sy_cell:2} run data modify storage helix:vm color set value -8388864
execute if data storage helix:vm {_sy_cell:3} run data modify storage helix:vm color set value -16711936
execute if data storage helix:vm {_sy_cell:4} run data modify storage helix:vm color set value -16711681
execute if data storage helix:vm {_sy_cell:5} run data modify storage helix:vm color set value -32768
function helix:stockyard/paint_tile
scoreboard players add helix _sy_i 1
return run function helix:stockyard/render_loop
