# helix:pong/loop_paddle_ai — render 12 vertical pixels at x=122 and x=123
execute if score helix _pp_i matches 12.. run return 0
scoreboard players operation helix _pp_row = helix _pp_y
scoreboard players operation helix _pp_row += helix _pp_i
execute store result storage helix:vm py int 1 run scoreboard players get helix _pp_row
data modify storage helix:vm px set value 122
data modify storage helix:vm color set value 0
execute store result storage helix:vm color int 1 run scoreboard players get helix _pp_color
function helix:pong/setpx with storage helix:vm
data modify storage helix:vm px set value 123
function helix:pong/setpx with storage helix:vm
scoreboard players add helix _pp_i 1
return run function helix:pong/loop_paddle_ai
