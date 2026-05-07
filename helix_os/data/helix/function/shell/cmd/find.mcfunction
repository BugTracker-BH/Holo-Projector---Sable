# helix:shell/cmd/find — Search filesystem for filename match
execute store result score helix _arg_len run data get storage helix:vm _arg1
execute if score helix _arg_len matches ..0 run function helix:_show {msg:"usage: find <name>",color:"YELLOW"}
execute if score helix _arg_len matches ..0 run return 0
scoreboard players set helix _find_hits 0
scoreboard players set helix _find_i 0
execute store result score helix _find_total run data get storage helix:fs nodes
data modify storage helix:fs _find_target set from storage helix:vm _arg1
data modify storage helix:fs _find_results set value ""
function helix:shell/cmd/find_loop
execute if score helix _find_hits matches 0 run function helix:_show {msg:"no matches",color:"GRAY"}
execute if score helix _find_hits matches 1.. run function helix:shell/cmd/find_show with storage helix:fs
