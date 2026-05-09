# holo:art/ocean_sunset/start — Sunset over a shimmering ocean
function holo:art/stop
execute unless entity @e[tag=projector_pixel,limit=1] run tellraw @a [{"text":"[ART] ","color":"red","bold":true},{"text":"Run /function helix_term:setup first.","color":"gray"}]
execute unless entity @e[tag=projector_pixel,limit=1] run return 0

scoreboard players set #ART_ID holo.state 4
scoreboard players set #ART_FRAME holo.frame 0

function holo:art/ocean_sunset/tick
tellraw @a [{"text":"[ART] ","color":"light_purple","bold":true},{"text":"Ocean Sunset","color":"gold"},{"text":" projecting. Stop with ","color":"gray"},{"text":"/function holo:art/stop","color":"yellow"}]
