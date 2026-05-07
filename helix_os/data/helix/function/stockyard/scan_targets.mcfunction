# helix:stockyard/scan_targets — set _sy_has_target=1 if any cell has bare target (value 3)
execute if score helix _sy_i matches 144.. run return 0
execute store result storage helix:vm _sy_idx int 1 run scoreboard players get helix _sy_i
function helix:stockyard/get_cell with storage helix:vm
execute if data storage helix:vm {_sy_cell:3} run scoreboard players set helix _sy_has_target 1
scoreboard players add helix _sy_i 1
return run function helix:stockyard/scan_targets
