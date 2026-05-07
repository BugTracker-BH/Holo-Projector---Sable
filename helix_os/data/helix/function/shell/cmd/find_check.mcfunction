$data modify storage helix:shell _find_name set from storage helix:fs nodes[$(_find_idx)].name
$execute if score helix _find_hits matches 0 if data storage helix:shell {_find_name:"$(_find_target)"} run function helix:shell/cmd/find_hit with storage helix:shell
