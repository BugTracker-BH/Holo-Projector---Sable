# holo:hack/games/tracker/draw_aim_green — draw 3x3 green crosshair at (#TR_AIM_R, #TR_AIM_C)
scoreboard players operation #TR_AR_M holo.tmp = #TR_AIM_R holo.tmp
scoreboard players remove #TR_AR_M holo.tmp 1
scoreboard players operation #TR_AR_P holo.tmp = #TR_AIM_R holo.tmp
scoreboard players add #TR_AR_P holo.tmp 1
scoreboard players operation #TR_AC_M holo.tmp = #TR_AIM_C holo.tmp
scoreboard players remove #TR_AC_M holo.tmp 1
scoreboard players operation #TR_AC_P holo.tmp = #TR_AIM_C holo.tmp
scoreboard players add #TR_AC_P holo.tmp 1
execute as @e[tag=projector_pixel] if score @s holo.row >= #TR_AR_M holo.tmp if score @s holo.row <= #TR_AR_P holo.tmp if score @s holo.col >= #TR_AC_M holo.tmp if score @s holo.col <= #TR_AC_P holo.tmp run data modify entity @s background set value -16711936
