execute if data storage helix:shell {_grep_content_work:""} run return 0
data modify storage helix:shell _grep_content_work set string storage helix:shell _grep_content_work 1
scoreboard players add helix _grep_content_len 1
function helix:shell/cmd/grep_clen_loop
