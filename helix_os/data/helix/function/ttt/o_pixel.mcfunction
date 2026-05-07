# helix:ttt/o_pixel — MACRO: plot one ring pixel at offset (dx,dy)
$scoreboard players set helix _ttt_dx $(dx)
$scoreboard players set helix _ttt_dy $(dy)
scoreboard players operation helix _ttt_x = helix _ttt_cx
scoreboard players operation helix _ttt_x += helix _ttt_dx
scoreboard players operation helix _ttt_y = helix _ttt_cy
scoreboard players operation helix _ttt_y += helix _ttt_dy
execute store result storage helix:vm px int 1 run scoreboard players get helix _ttt_x
execute store result storage helix:vm py int 1 run scoreboard players get helix _ttt_y
function helix:pong/setpx with storage helix:vm
