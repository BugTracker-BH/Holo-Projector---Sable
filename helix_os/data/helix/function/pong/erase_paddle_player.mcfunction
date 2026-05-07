# helix:pong/erase_paddle_player — clear old player paddle pixels
scoreboard players operation helix _pp_y = helix pong_py_old
scoreboard players set helix _pp_i 0
scoreboard players set helix _pp_color 0
function helix:pong/loop_paddle_player
