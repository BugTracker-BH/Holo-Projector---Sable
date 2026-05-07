# helix:shell/cmd/find_hit - Append found name to results
execute store result score helix _fr_len run data get storage helix:fs _find_results
execute if score helix _fr_len matches ..0 run function helix:shell/cmd/find_hit_first with storage helix:fs
execute if score helix _fr_len matches 1.. run function helix:shell/cmd/find_hit_next with storage helix:fs
