# helix:fs/ls_loop — Iterate children, build output string
execute if score helix _ls_i >= helix _ls_count run return 0
execute store result storage helix:fs _ls_ci int 1 run scoreboard players get helix _ls_i
function helix:fs/ls_get_child with storage helix:fs
execute store result storage helix:fs _ls_ni int 1 run scoreboard players get helix _ls_child_id
function helix:fs/ls_check_hidden with storage helix:fs
scoreboard players add helix _ls_i 1
function helix:fs/ls_loop
