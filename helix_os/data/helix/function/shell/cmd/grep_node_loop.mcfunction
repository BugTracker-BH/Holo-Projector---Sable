# helix:shell/cmd/grep_node_loop - Iterate file nodes, search content
execute if score helix _grep_i >= helix _grep_total run return 0
execute if score helix _grep_hits matches 5.. run return 0
execute store result storage helix:fs _gi int 1 run scoreboard players get helix _grep_i
function helix:shell/cmd/grep_check_content with storage helix:fs
function helix:shell/cmd/grep_filter
scoreboard players add helix _grep_i 1
function helix:shell/cmd/grep_node_loop
