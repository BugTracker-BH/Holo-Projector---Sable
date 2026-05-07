# helix:fs/walk_parent — Go to parent of _resolve_cur
execute store result storage helix:fs _wi int 1 run scoreboard players get helix _resolve_cur
function helix:fs/get_parent with storage helix:fs
