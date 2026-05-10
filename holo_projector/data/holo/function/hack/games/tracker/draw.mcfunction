# holo:hack/games/tracker/draw — draw target, crosshair, progress bar
execute as @e[tag=projector_pixel,scores={holo.row=12..63}] run data modify entity @s background set value -16777216

# Target 5x5 red, white core
scoreboard players operation #TR_TR_E holo.tmp = #TR_TGT_R holo.tmp
scoreboard players add #TR_TR_E holo.tmp 2
scoreboard players operation #TR_TR_S holo.tmp = #TR_TGT_R holo.tmp
scoreboard players remove #TR_TR_S holo.tmp 2
scoreboard players operation #TR_TC_E holo.tmp = #TR_TGT_C holo.tmp
scoreboard players add #TR_TC_E holo.tmp 2
scoreboard players operation #TR_TC_S holo.tmp = #TR_TGT_C holo.tmp
scoreboard players remove #TR_TC_S holo.tmp 2
execute as @e[tag=projector_pixel] if score @s holo.row >= #TR_TR_S holo.tmp if score @s holo.row <= #TR_TR_E holo.tmp if score @s holo.col >= #TR_TC_S holo.tmp if score @s holo.col <= #TR_TC_E holo.tmp run data modify entity @s background set value -65536
execute as @e[tag=projector_pixel] if score @s holo.row = #TR_TGT_R holo.tmp if score @s holo.col = #TR_TGT_C holo.tmp run data modify entity @s background set value -1

# Crosshair (only if aim was successfully captured this tick)
execute if score #TR_AIM_R holo.tmp matches 0.. if score #TR_ON holo.tmp matches 1 run function holo:hack/games/tracker/draw_aim_green
execute if score #TR_AIM_R holo.tmp matches 0.. if score #TR_ON holo.tmp matches 0 run function holo:hack/games/tracker/draw_aim_white

# Progress bar (cumulative on-target time / 600 ticks)
execute as @e[tag=projector_pixel,scores={holo.row=66..67,holo.col=4..123}] run data modify entity @s background set value -8355712
scoreboard players set #TR_K120 holo.tmp 120
scoreboard players set #TR_K600 holo.tmp 600
scoreboard players operation #TR_PBE holo.tmp = helix hack_score
scoreboard players operation #TR_PBE holo.tmp *= #TR_K120 holo.tmp
scoreboard players operation #TR_PBE holo.tmp /= #TR_K600 holo.tmp
execute if score #TR_PBE holo.tmp matches 120.. run scoreboard players set #TR_PBE holo.tmp 119
scoreboard players add #TR_PBE holo.tmp 4
execute as @e[tag=projector_pixel] if score @s holo.row matches 66..67 if score @s holo.col matches 4.. if score @s holo.col <= #TR_PBE holo.tmp run data modify entity @s background set value -16711936
