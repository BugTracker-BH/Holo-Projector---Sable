# helix:pong/draw_ball_now — draw ball at current 2x2 position in yellow
execute store result storage helix:vm py int 1 run scoreboard players get helix pong_by
execute store result storage helix:vm px int 1 run scoreboard players get helix pong_bx
data modify storage helix:vm color set value -256
function helix:pong/setpx with storage helix:vm
scoreboard players operation helix _tmp1 = helix pong_bx
scoreboard players add helix _tmp1 1
execute store result storage helix:vm px int 1 run scoreboard players get helix _tmp1
function helix:pong/setpx with storage helix:vm
scoreboard players operation helix _tmp1 = helix pong_by
scoreboard players add helix _tmp1 1
execute store result storage helix:vm py int 1 run scoreboard players get helix _tmp1
execute store result storage helix:vm px int 1 run scoreboard players get helix pong_bx
function helix:pong/setpx with storage helix:vm
scoreboard players operation helix _tmp1 = helix pong_bx
scoreboard players add helix _tmp1 1
execute store result storage helix:vm px int 1 run scoreboard players get helix _tmp1
function helix:pong/setpx with storage helix:vm
