# holo:art/snowy_valley/start — Mountains, pines, falling snow
function holo:art/stop
execute unless entity @e[tag=projector_pixel,limit=1] run tellraw @a [{"text":"[ART] ","color":"red","bold":true},{"text":"Run /function helix_term:setup first.","color":"gray"}]
execute unless entity @e[tag=projector_pixel,limit=1] run return 0

scoreboard players set #ART_ID holo.state 3
scoreboard players set #ART_FRAME holo.frame 0

# Init 16 snowflake Y positions (staggered start)
scoreboard players set #SF0 holo.tmp 0
scoreboard players set #SF1 holo.tmp 4
scoreboard players set #SF2 holo.tmp 8
scoreboard players set #SF3 holo.tmp 12
scoreboard players set #SF4 holo.tmp 16
scoreboard players set #SF5 holo.tmp 20
scoreboard players set #SF6 holo.tmp 24
scoreboard players set #SF7 holo.tmp 28
scoreboard players set #SF8 holo.tmp 32
scoreboard players set #SF9 holo.tmp 36
scoreboard players set #SF10 holo.tmp 40
scoreboard players set #SF11 holo.tmp 44
scoreboard players set #SF12 holo.tmp 48
scoreboard players set #SF13 holo.tmp 52
scoreboard players set #SF14 holo.tmp 5
scoreboard players set #SF15 holo.tmp 30

# Begin animation
function holo:art/snowy_valley/tick
tellraw @a [{"text":"[ART] ","color":"light_purple","bold":true},{"text":"Snowy Valley","color":"white"},{"text":" projecting. Stop with ","color":"gray"},{"text":"/function holo:art/stop","color":"yellow"}]
