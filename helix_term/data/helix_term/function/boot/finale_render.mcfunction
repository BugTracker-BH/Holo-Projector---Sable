# helix_term:boot/finale_render - Render "Ready when you are!" as 2 lines at scale 2
# Clear screen
execute as @e[tag=projector_pixel] run data modify entity @s background set value -16777216
# Set scale 2
scoreboard players set #TSCALE holo.tmp 2
# Line 1: "Ready when" (top half)
data modify storage holo:m msg set value "Ready when"
execute store result score #MSGLEN holo.tmp run data get storage holo:m msg
scoreboard players operation #TWIDTH holo.tmp = #MSGLEN holo.tmp
scoreboard players operation #TWIDTH holo.tmp *= #CHAR_STRIDE holo.v
scoreboard players operation #TWIDTH holo.tmp *= #TSCALE holo.tmp
scoreboard players operation #START_X holo.tmp = #COLS holo.v
scoreboard players operation #START_X holo.tmp -= #TWIDTH holo.tmp
scoreboard players operation #START_X holo.tmp /= #TWO holo.v
scoreboard players operation #START_Y holo.tmp = #ROWS holo.v
scoreboard players operation #START_Y holo.tmp /= #TWO holo.v
scoreboard players set #HALFLINE holo.v 9
scoreboard players operation #START_Y holo.tmp -= #HALFLINE holo.v
scoreboard players set #I holo.tmp 0
scoreboard players operation #CHAR_X holo.tmp = #START_X holo.tmp
function holo:text/render_loop
# Line 2: "you are!" (bottom half)
data modify storage holo:m msg set value "you are!"
execute store result score #MSGLEN holo.tmp run data get storage holo:m msg
scoreboard players operation #TWIDTH holo.tmp = #MSGLEN holo.tmp
scoreboard players operation #TWIDTH holo.tmp *= #CHAR_STRIDE holo.v
scoreboard players operation #TWIDTH holo.tmp *= #TSCALE holo.tmp
scoreboard players operation #START_X holo.tmp = #COLS holo.v
scoreboard players operation #START_X holo.tmp -= #TWIDTH holo.tmp
scoreboard players operation #START_X holo.tmp /= #TWO holo.v
scoreboard players operation #START_Y holo.tmp = #ROWS holo.v
scoreboard players operation #START_Y holo.tmp /= #TWO holo.v
scoreboard players add #START_Y holo.tmp 5
scoreboard players set #I holo.tmp 0
scoreboard players operation #CHAR_X holo.tmp = #START_X holo.tmp
function holo:text/render_loop
