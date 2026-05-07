# helix:fs/perm_check — Check read permission for _resolved_node
scoreboard players set helix _perm_ok 1
execute if score helix _resolved_node matches -1 run scoreboard players set helix _perm_ok 0
execute if score helix _resolved_node matches -1 run return 0
execute store result storage helix:fs _pi int 1 run scoreboard players get helix _resolved_node
function helix:fs/perm_load with storage helix:fs
execute if data storage helix:fs {_node_perm:"---"} unless data storage helix:shell {current_user:"root"} run scoreboard players set helix _perm_ok 0
