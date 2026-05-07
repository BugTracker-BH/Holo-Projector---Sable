# helix:ttt/draw_X_loop — diagonal stroke from -8 to +8
execute if score helix _ttt_i matches 9.. run return 0
scoreboard players operation helix _ttt_x = helix _ttt_cx
scoreboard players operation helix _ttt_x += helix _ttt_i
scoreboard players operation helix _ttt_y = helix _ttt_cy
scoreboard players operation helix _ttt_y += helix _ttt_i
execute store result storage helix:vm px int 1 run scoreboard players get helix _ttt_x
execute store result storage helix:vm py int 1 run scoreboard players get helix _ttt_y
function helix:pong/setpx with storage helix:vm
# Other diagonal
scoreboard players operation helix _ttt_y = helix _ttt_cy
scoreboard players operation helix _ttt_y -= helix _ttt_i
execute store result storage helix:vm py int 1 run scoreboard players get helix _ttt_y
function helix:pong/setpx with storage helix:vm
scoreboard players add helix _ttt_i 1
return run function helix:ttt/draw_X_loop
