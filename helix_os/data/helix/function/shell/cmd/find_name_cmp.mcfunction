$execute if data storage helix:fs {_find_name:"$(_find_target)"} run scoreboard players add helix _find_hits 1
$execute if data storage helix:fs {_find_name:"$(_find_target)"} run function helix:shell/cmd/find_hit with storage helix:fs
