# helix:fs/resolve_parent - Go to parent of current cwd
execute store result storage helix:fs _wi int 1 run scoreboard players get helix cwd
function helix:fs/get_parent with storage helix:fs
scoreboard players operation helix _resolved_node = helix _resolve_cur
