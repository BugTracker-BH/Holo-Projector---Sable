execute if data storage helix:shell {_grep_needle_work:""} run return 0
data modify storage helix:shell _grep_needle_work set string storage helix:shell _grep_needle_work 1
scoreboard players add helix _grep_needle_len 1
function helix:shell/cmd/grep_nlen_loop
