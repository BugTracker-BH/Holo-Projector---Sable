# helix:fs/walk_child_loop - Iterate children to find matching name
execute if score helix _wc_found matches 1 run return 0
execute if score helix _wc_i >= helix _wc_count run return 0
execute store result storage helix:fs _wci int 1 run scoreboard players get helix _wc_i
function helix:fs/walk_child_check with storage helix:fs
function helix:fs/name_match with storage helix:fs
scoreboard players add helix _wc_i 1
function helix:fs/walk_child_loop
