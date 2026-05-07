# helix:pong/read_input — read player pitch, map to paddle Y
execute as @a[limit=1] store result score helix _pitch run data get entity @s Rotation[1]
# paddle_y = 30 + pitch * 25 / 90    (clamped 0..60)
scoreboard players operation helix pong_py = helix _pitch
scoreboard players operation helix pong_py *= helix _pong_25
scoreboard players operation helix pong_py /= helix _pong_90
scoreboard players add helix pong_py 30
execute if score helix pong_py matches ..0 run scoreboard players set helix pong_py 0
execute if score helix pong_py matches 60.. run scoreboard players set helix pong_py 60
