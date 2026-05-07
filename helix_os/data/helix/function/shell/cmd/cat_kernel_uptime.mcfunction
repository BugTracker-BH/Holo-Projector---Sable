# cat_kernel_uptime — Display live uptime through the _show helper
execute store result storage helix:vm _uptime_val int 1 run scoreboard players get helix uptime
function helix:shell/cmd/cat_uptime_show with storage helix:vm
