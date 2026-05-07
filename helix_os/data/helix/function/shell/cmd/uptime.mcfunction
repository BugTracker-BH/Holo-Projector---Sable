# helix:shell/cmd/uptime — Show system uptime
execute store result storage helix:shell _up_ticks int 1 run scoreboard players get helix uptime
function helix:shell/cmd/uptime_show with storage helix:shell
