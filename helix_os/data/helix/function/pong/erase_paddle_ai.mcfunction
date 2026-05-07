# helix:pong/erase_paddle_ai — clear old AI paddle pixels
scoreboard players operation helix _pp_y = helix pong_ay_old
scoreboard players set helix _pp_i 0
scoreboard players set helix _pp_color 0
function helix:pong/loop_paddle_ai
