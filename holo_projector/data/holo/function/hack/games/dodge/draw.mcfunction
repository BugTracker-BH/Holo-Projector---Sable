# holo:hack/games/dodge/draw — clear game area, draw enemies, draw paddle
# Clear game area (rows 10..63)
execute as @e[tag=projector_pixel,scores={holo.row=10..63}] run data modify entity @s background set value -16777216

# Draw 3 enemies (3x3 red squares at their current positions)
scoreboard players operation #DG_E0_RE holo.tmp = #DG_E0_R holo.tmp
scoreboard players add #DG_E0_RE holo.tmp 2
scoreboard players operation #DG_E0_CE holo.tmp = #DG_E0_C holo.tmp
scoreboard players add #DG_E0_CE holo.tmp 2
execute as @e[tag=projector_pixel] if score @s holo.row >= #DG_E0_R holo.tmp if score @s holo.row <= #DG_E0_RE holo.tmp if score @s holo.col >= #DG_E0_C holo.tmp if score @s holo.col <= #DG_E0_CE holo.tmp run data modify entity @s background set value -65536

scoreboard players operation #DG_E1_RE holo.tmp = #DG_E1_R holo.tmp
scoreboard players add #DG_E1_RE holo.tmp 2
scoreboard players operation #DG_E1_CE holo.tmp = #DG_E1_C holo.tmp
scoreboard players add #DG_E1_CE holo.tmp 2
execute as @e[tag=projector_pixel] if score @s holo.row >= #DG_E1_R holo.tmp if score @s holo.row <= #DG_E1_RE holo.tmp if score @s holo.col >= #DG_E1_C holo.tmp if score @s holo.col <= #DG_E1_CE holo.tmp run data modify entity @s background set value -65536

scoreboard players operation #DG_E2_RE holo.tmp = #DG_E2_R holo.tmp
scoreboard players add #DG_E2_RE holo.tmp 2
scoreboard players operation #DG_E2_CE holo.tmp = #DG_E2_C holo.tmp
scoreboard players add #DG_E2_CE holo.tmp 2
execute as @e[tag=projector_pixel] if score @s holo.row >= #DG_E2_R holo.tmp if score @s holo.row <= #DG_E2_RE holo.tmp if score @s holo.col >= #DG_E2_C holo.tmp if score @s holo.col <= #DG_E2_CE holo.tmp run data modify entity @s background set value -65536

# Draw paddle (rows 60-61, cols PADDLE..PADDLE+6, cyan)
scoreboard players operation #DG_PEND holo.tmp = #DG_PADDLE holo.tmp
scoreboard players add #DG_PEND holo.tmp 6
execute as @e[tag=projector_pixel] if score @s holo.row matches 60..61 if score @s holo.col >= #DG_PADDLE holo.tmp if score @s holo.col <= #DG_PEND holo.tmp run data modify entity @s background set value -16711681
