# helix:shell/cmd/grep — Search all file nodes for content containing arg
execute store result score helix _arg_len run data get storage helix:vm _arg1
execute if score helix _arg_len matches ..0 run function helix:_show {msg:"usage: grep <pattern>",color:"YELLOW"}
execute if score helix _arg_len matches ..0 run return 0
scoreboard players set helix _grep_hits 0
scoreboard players set helix _grep_i 0
execute store result score helix _grep_total run data get storage helix:fs nodes
data modify storage helix:fs _grep_needle set from storage helix:vm _arg1
data modify storage helix:fs _grep_results set value ""
function helix:shell/cmd/grep_node_loop
execute if score helix _grep_hits matches 0 run function helix:_show {msg:"no matches",color:"GRAY"}
execute if score helix _grep_hits matches 1.. run function helix:shell/cmd/grep_show with storage helix:fs
