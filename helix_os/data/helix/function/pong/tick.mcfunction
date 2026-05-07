# helix:pong/tick — main game tick
execute if score helix pong_active matches 0 run return 0
scoreboard players operation helix pong_py_old = helix pong_py
scoreboard players operation helix pong_ay_old = helix pong_ay
scoreboard players operation helix pong_bx_old = helix pong_bx
scoreboard players operation helix pong_by_old = helix pong_by
function helix:pong/read_input
function helix:pong/ai_move
function helix:pong/move_ball
function helix:pong/check_collide
function helix:pong/render
execute if score helix pong_active matches 1 run schedule function helix:pong/tick 2t
