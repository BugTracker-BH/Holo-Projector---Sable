# helix:ttt/grid_h_loop — draw 2 horizontal lines
execute if score helix _ttt_i matches 128.. run return 0
execute store result storage helix:vm px int 1 run scoreboard players get helix _ttt_i
data modify storage helix:vm color set value -1
data modify storage helix:vm py set value 24
function helix:pong/setpx with storage helix:vm
data modify storage helix:vm py set value 48
function helix:pong/setpx with storage helix:vm
scoreboard players add helix _ttt_i 1
return run function helix:ttt/grid_h_loop
