# holo:art/pulsing_heart/start — Pink-gradient heart pulsing through 3 sizes with sparkles
function holo:art/stop
execute unless entity @e[tag=projector_pixel,limit=1] run tellraw @a [{"text":"[ART] ","color":"red","bold":true},{"text":"Run /function helix_term:setup first.","color":"gray"}]
execute unless entity @e[tag=projector_pixel,limit=1] run return 0

scoreboard players set #ART_ID holo.state 9
scoreboard players set #ART_FRAME holo.frame 0

# === PINK GRADIENT BACKGROUND (3 bands) ===
execute as @e[tag=projector_pixel,scores={holo.row=0..23}] run data modify entity @s background set value -11529136
execute as @e[tag=projector_pixel,scores={holo.row=24..47}] run data modify entity @s background set value -7589256
execute as @e[tag=projector_pixel,scores={holo.row=48..71}] run data modify entity @s background set value -3644256

# === SOFT GLOW WRAPPER (large area around heart, lighter than bg) ===
execute as @e[tag=projector_pixel,scores={holo.row=22..50,holo.col=42..86}] run data modify entity @s background set value -2328396
execute as @e[tag=projector_pixel,scores={holo.row=26..46,holo.col=48..80}] run data modify entity @s background set value -45016

function holo:art/pulsing_heart/tick
tellraw @a [{"text":"[ART] ","color":"light_purple","bold":true},{"text":"Pulsing Heart","color":"light_purple"},{"text":" projecting. Stop with ","color":"gray"},{"text":"/function holo:art/stop","color":"yellow"}]
