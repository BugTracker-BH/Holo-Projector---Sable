$execute store result score helix _wc_candidate run data get storage helix:fs _child_list[$(_wci)]
$execute store result storage helix:fs _wc_idx int 1 run scoreboard players get helix _wc_candidate
$function helix:fs/walk_child_name with storage helix:fs
