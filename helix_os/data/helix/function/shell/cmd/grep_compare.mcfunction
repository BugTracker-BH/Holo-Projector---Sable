scoreboard players set helix _grep_matched 0
$execute if data storage helix:shell {_grep_sub:"$(_grep_needle)"} run scoreboard players set helix _grep_matched 1
