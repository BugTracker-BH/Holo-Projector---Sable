# holo:art/cozy_house/tick — animate flame inside the hearth + floor glow
execute unless score #ART_ID holo.state matches 2 run return 0
scoreboard players add #ART_FRAME holo.frame 1

# === Reset hearth interior to black each frame ===
execute as @e[tag=projector_pixel,scores={holo.row=42..57,holo.col=55..73}] run data modify entity @s background set value -16777216

# === Logs (dark wood at base) ===
execute as @e[tag=projector_pixel,scores={holo.row=56..57,holo.col=58..70}] run data modify entity @s background set value -13492721
execute as @e[tag=projector_pixel,scores={holo.row=57,holo.col=58..70}] run data modify entity @s background set value -8234456

# === Embers (deep red glow on logs) ===
execute as @e[tag=projector_pixel,scores={holo.row=55,holo.col=59..69}] run data modify entity @s background set value -4970486

# === Main flame body (orange) ===
execute as @e[tag=projector_pixel,scores={holo.row=52..54,holo.col=60..68}] run data modify entity @s background set value -34786
execute as @e[tag=projector_pixel,scores={holo.row=51,holo.col=61..67}] run data modify entity @s background set value -34786

# === Yellow inner core ===
execute as @e[tag=projector_pixel,scores={holo.row=52..54,holo.col=62..66}] run data modify entity @s background set value -11696
execute as @e[tag=projector_pixel,scores={holo.row=51,holo.col=63..65}] run data modify entity @s background set value -11696

# === White-hot center ===
execute as @e[tag=projector_pixel,scores={holo.row=53,holo.col=63..65}] run data modify entity @s background set value -1336

# === Random flame tongues at top (3 random pixels per frame) ===
execute store result score #FH1 holo.tmp run random value 47..50
execute store result score #FC1 holo.tmp run random value 60..68
execute store result storage holo:art row int 1 run scoreboard players get #FH1 holo.tmp
execute store result storage holo:art col int 1 run scoreboard players get #FC1 holo.tmp
data modify storage holo:art color set value -34786
function holo:art/draw with storage holo:art

execute store result score #FH2 holo.tmp run random value 48..51
execute store result score #FC2 holo.tmp run random value 61..67
execute store result storage holo:art row int 1 run scoreboard players get #FH2 holo.tmp
execute store result storage holo:art col int 1 run scoreboard players get #FC2 holo.tmp
data modify storage holo:art color set value -11696
function holo:art/draw with storage holo:art

execute store result score #FH3 holo.tmp run random value 49..52
execute store result score #FC3 holo.tmp run random value 62..66
execute store result storage holo:art row int 1 run scoreboard players get #FH3 holo.tmp
execute store result storage holo:art col int 1 run scoreboard players get #FC3 holo.tmp
data modify storage holo:art color set value -1336
function holo:art/draw with storage holo:art

# === Floor glow from fireplace (re-draw with random flicker) ===
execute as @e[tag=projector_pixel,scores={holo.row=60..62,holo.col=42..86}] run data modify entity @s background set value -7581666
execute as @e[tag=projector_pixel,scores={holo.row=63..65,holo.col=46..82}] run data modify entity @s background set value -8237016
# Random extra-bright spot in floor glow
execute store result score #FGR holo.tmp run random value 0..3
execute if score #FGR holo.tmp matches 0 run data modify entity @e[tag=pixel_r60_c58,limit=1] background set value -34786
execute if score #FGR holo.tmp matches 1 run data modify entity @e[tag=pixel_r60_c64,limit=1] background set value -34786
execute if score #FGR holo.tmp matches 2 run data modify entity @e[tag=pixel_r60_c70,limit=1] background set value -34786
execute if score #FGR holo.tmp matches 3 run data modify entity @e[tag=pixel_r61_c64,limit=1] background set value -11696

schedule function holo:art/cozy_house/tick 3t
