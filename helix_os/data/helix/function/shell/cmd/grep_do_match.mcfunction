$execute if data storage helix:fs {_grep_content:"$(_grep_needle)"} run scoreboard players add helix _grep_hits 1
$execute if data storage helix:fs {_grep_content:"$(_grep_needle)"} store result score helix _gr_len run data get storage helix:fs _grep_results
$execute if data storage helix:fs {_grep_content:"$(_grep_needle)"} if score helix _gr_len matches ..0 run data modify storage helix:fs _grep_results set value "$(_grep_node_name)"
$execute if data storage helix:fs {_grep_content:"$(_grep_needle)"} if score helix _gr_len matches 1.. run data modify storage helix:fs _grep_results set value "$(_grep_results) $(_grep_node_name)"
