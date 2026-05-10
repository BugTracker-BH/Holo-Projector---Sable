# holo:art/cherry_blossom/start — Pink-bloom tree with falling petals
function holo:art/stop
execute unless entity @e[tag=projector_pixel,limit=1] run tellraw @a [{"text":"[ART] ","color":"red","bold":true},{"text":"Run /function helix_term:setup first.","color":"gray"}]
execute unless entity @e[tag=projector_pixel,limit=1] run return 0

scoreboard players set #ART_ID holo.state 7
scoreboard players set #ART_FRAME holo.frame 0

# Init 16 petal Y positions (staggered)
scoreboard players set #PT0 holo.tmp 0
scoreboard players set #PT1 holo.tmp 4
scoreboard players set #PT2 holo.tmp 8
scoreboard players set #PT3 holo.tmp 12
scoreboard players set #PT4 holo.tmp 16
scoreboard players set #PT5 holo.tmp 20
scoreboard players set #PT6 holo.tmp 24
scoreboard players set #PT7 holo.tmp 28
scoreboard players set #PT8 holo.tmp 32
scoreboard players set #PT9 holo.tmp 36
scoreboard players set #PT10 holo.tmp 40
scoreboard players set #PT11 holo.tmp 44
scoreboard players set #PT12 holo.tmp 48
scoreboard players set #PT13 holo.tmp 52
scoreboard players set #PT14 holo.tmp 6
scoreboard players set #PT15 holo.tmp 26

function holo:art/cherry_blossom/tick
tellraw @a [{"text":"[ART] ","color":"light_purple","bold":true},{"text":"Cherry Blossom","color":"light_purple"},{"text":" projecting. Stop with ","color":"gray"},{"text":"/function holo:art/stop","color":"yellow"}]
