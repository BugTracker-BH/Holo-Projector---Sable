# helix:pong/begin — initialize game state and start tick loop
function holo:text/clear
playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.2
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.5 1.5
scoreboard players set helix pong_active 1
scoreboard players set helix pong_score_p 0
scoreboard players set helix pong_score_a 0
scoreboard players set helix pong_py 30
scoreboard players set helix pong_py_old 30
scoreboard players set helix pong_ay 30
scoreboard players set helix pong_ay_old 30
scoreboard players set helix pong_bx 63
scoreboard players set helix pong_bx_old 63
scoreboard players set helix pong_by 35
scoreboard players set helix pong_by_old 35
scoreboard players set helix pong_vx 1
scoreboard players set helix pong_vy 1
function helix:pong/draw_paddles
function helix:pong/draw_ball_now
schedule function helix:pong/tick 2t
tellraw @a [{"text":"[PONG] ","color":"aqua","bold":true},{"text":"Look up/down to control your paddle. First to ","color":"gray"},{"score":{"name":"helix","objective":"pong_target"},"color":"yellow"},{"text":" wins.","color":"gray"}]
