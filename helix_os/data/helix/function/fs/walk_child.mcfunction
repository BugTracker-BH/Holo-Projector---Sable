# helix:fs/walk_child — Find child of _resolve_cur named _walk_seg
execute store result storage helix:fs _wi int 1 run scoreboard players get helix _resolve_cur
function helix:fs/get_children with storage helix:fs
execute store result score helix _wc_count run data get storage helix:fs _child_list
scoreboard players set helix _wc_i 0
scoreboard players set helix _wc_found 0
function helix:fs/walk_child_loop
execute if score helix _wc_found matches 0 run scoreboard players set helix _resolve_cur -1
