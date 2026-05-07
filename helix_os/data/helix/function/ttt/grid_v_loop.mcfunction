# helix:ttt/grid_v_loop — draw 2 vertical lines column by column
execute if score helix _ttt_i matches 72.. run return 0
execute store result storage helix:vm py int 1 run scoreboard players get helix _ttt_i
data modify storage helix:vm color set value -1
data modify storage helix:vm px set value 42
function helix:pong/setpx with storage helix:vm
data modify storage helix:vm px set value 85
function helix:pong/setpx with storage helix:vm
scoreboard players add helix _ttt_i 1
return run function helix:ttt/grid_v_loop
