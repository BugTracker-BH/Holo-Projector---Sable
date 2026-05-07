# helix:pong/erase_ball — clear ball at old 2x2 position
execute store result storage helix:vm py int 1 run scoreboard players get helix pong_by_old
execute store result storage helix:vm px int 1 run scoreboard players get helix pong_bx_old
data modify storage helix:vm color set value 0
function helix:pong/setpx with storage helix:vm
scoreboard players operation helix _tmp1 = helix pong_bx_old
scoreboard players add helix _tmp1 1
execute store result storage helix:vm px int 1 run scoreboard players get helix _tmp1
function helix:pong/setpx with storage helix:vm
scoreboard players operation helix _tmp1 = helix pong_by_old
scoreboard players add helix _tmp1 1
execute store result storage helix:vm py int 1 run scoreboard players get helix _tmp1
execute store result storage helix:vm px int 1 run scoreboard players get helix pong_bx_old
function helix:pong/setpx with storage helix:vm
scoreboard players operation helix _tmp1 = helix pong_bx_old
scoreboard players add helix _tmp1 1
execute store result storage helix:vm px int 1 run scoreboard players get helix _tmp1
function helix:pong/setpx with storage helix:vm
