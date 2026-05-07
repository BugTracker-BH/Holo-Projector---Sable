# helix:shell/cmd/find_loop - Iterate nodes (bounded to 50 max)
execute if score helix _find_i >= helix _find_total run return 0
execute if score helix _find_hits matches 3.. run return 0
scoreboard players set helix _tmp2 50
execute if score helix _find_i >= helix _tmp2 run return 0
execute store result storage helix:fs _fi int 1 run scoreboard players get helix _find_i
function helix:shell/cmd/find_check_node with storage helix:fs
function helix:shell/cmd/find_name_cmp with storage helix:fs
scoreboard players add helix _find_i 1
function helix:shell/cmd/find_loop
