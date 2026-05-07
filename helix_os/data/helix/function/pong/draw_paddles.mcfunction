# helix:pong/draw_paddles — draw both paddles in white
scoreboard players operation helix _pp_y = helix pong_py
scoreboard players set helix _pp_i 0
scoreboard players set helix _pp_color -1
function helix:pong/loop_paddle_player
scoreboard players operation helix _pp_y = helix pong_ay
scoreboard players set helix _pp_i 0
scoreboard players set helix _pp_color -1
function helix:pong/loop_paddle_ai
