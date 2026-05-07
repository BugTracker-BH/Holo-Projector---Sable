# helix:pong/ai_move — AI tracks ball with imperfect speed (1 px/tick)
execute if score helix pong_by > helix pong_ay_center run scoreboard players add helix pong_ay 1
execute if score helix pong_by < helix pong_ay_center run scoreboard players remove helix pong_ay 1
scoreboard players operation helix pong_ay_center = helix pong_ay
scoreboard players add helix pong_ay_center 6
execute if score helix pong_ay matches ..0 run scoreboard players set helix pong_ay 0
execute if score helix pong_ay matches 60.. run scoreboard players set helix pong_ay 60
