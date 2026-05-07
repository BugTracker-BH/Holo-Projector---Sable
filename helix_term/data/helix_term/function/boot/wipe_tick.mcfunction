# helix_term:boot/wipe_tick — Clear 6 rows per game tick then schedule next tick until we reach row -1
execute if score helix _wipe_row matches ..-1 run return 0
execute store result storage helix:vm _wipe_row_val int 1 run scoreboard players get helix _wipe_row
function helix_term:boot/wipe_do with storage helix:vm
scoreboard players remove helix _wipe_row 1
execute if score helix _wipe_row matches ..-1 run return 0
execute store result storage helix:vm _wipe_row_val int 1 run scoreboard players get helix _wipe_row
function helix_term:boot/wipe_do with storage helix:vm
scoreboard players remove helix _wipe_row 1
execute if score helix _wipe_row matches ..-1 run return 0
execute store result storage helix:vm _wipe_row_val int 1 run scoreboard players get helix _wipe_row
function helix_term:boot/wipe_do with storage helix:vm
scoreboard players remove helix _wipe_row 1
execute if score helix _wipe_row matches ..-1 run return 0
execute store result storage helix:vm _wipe_row_val int 1 run scoreboard players get helix _wipe_row
function helix_term:boot/wipe_do with storage helix:vm
scoreboard players remove helix _wipe_row 1
execute if score helix _wipe_row matches ..-1 run return 0
execute store result storage helix:vm _wipe_row_val int 1 run scoreboard players get helix _wipe_row
function helix_term:boot/wipe_do with storage helix:vm
scoreboard players remove helix _wipe_row 1
execute if score helix _wipe_row matches ..-1 run return 0
execute store result storage helix:vm _wipe_row_val int 1 run scoreboard players get helix _wipe_row
function helix_term:boot/wipe_do with storage helix:vm
scoreboard players remove helix _wipe_row 1
schedule function helix_term:boot/wipe_tick 1t
