# holo:paint/brush_5 — 5×5 brush around (#PR,#PC)
scoreboard players operation #PR_M holo.tmp = #PR holo.tmp
scoreboard players remove #PR_M holo.tmp 2
scoreboard players operation #PR_P holo.tmp = #PR holo.tmp
scoreboard players add #PR_P holo.tmp 2
scoreboard players operation #PC_M holo.tmp = #PC holo.tmp
scoreboard players remove #PC_M holo.tmp 2
scoreboard players operation #PC_P holo.tmp = #PC holo.tmp
scoreboard players add #PC_P holo.tmp 2
execute as @e[tag=projector_pixel] if score @s holo.row >= #PR_M holo.tmp if score @s holo.row <= #PR_P holo.tmp if score @s holo.col >= #PC_M holo.tmp if score @s holo.col <= #PC_P holo.tmp store result entity @s background int 1 run scoreboard players get #BRUSH_COLOR holo.tmp
