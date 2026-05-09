# holo:art/cozy_house/start — Cozy interior with animated fireplace
function holo:art/stop
execute unless entity @e[tag=projector_pixel,limit=1] run tellraw @a [{"text":"[ART] ","color":"red","bold":true},{"text":"Run /function helix_term:setup first.","color":"gray"}]
execute unless entity @e[tag=projector_pixel,limit=1] run return 0

scoreboard players set #ART_ID holo.state 2
scoreboard players set #ART_FRAME holo.frame 0

# Roof (very dark)
execute as @e[tag=projector_pixel,scores={holo.row=0..3}] run data modify entity @s background set value -14149361

# Ceiling beam separating roof and walls
execute as @e[tag=projector_pixel,scores={holo.row=4,holo.col=0..127}] run data modify entity @s background set value -12834796

# Walls (warm brown)
execute as @e[tag=projector_pixel,scores={holo.row=5..58}] run data modify entity @s background set value -10864866
# Wall horizontal accent stripes (lighter wood)
execute as @e[tag=projector_pixel,scores={holo.row=15,holo.col=0..127}] run data modify entity @s background set value -8237016
execute as @e[tag=projector_pixel,scores={holo.row=29,holo.col=0..127}] run data modify entity @s background set value -8237016
execute as @e[tag=projector_pixel,scores={holo.row=43,holo.col=0..127}] run data modify entity @s background set value -8237016

# Window frame (top-left)
execute as @e[tag=projector_pixel,scores={holo.row=10..27,holo.col=15..41}] run data modify entity @s background set value -12834796
# Window pane (night sky)
execute as @e[tag=projector_pixel,scores={holo.row=12..26,holo.col=17..39}] run data modify entity @s background set value -15790296
# Window cross
execute as @e[tag=projector_pixel,scores={holo.row=12..26,holo.col=27..28}] run data modify entity @s background set value -12834796
execute as @e[tag=projector_pixel,scores={holo.row=18..19,holo.col=17..39}] run data modify entity @s background set value -12834796
# Stars in window
data modify entity @e[tag=pixel_r14_c22,limit=1] background set value -1
data modify entity @e[tag=pixel_r16_c34,limit=1] background set value -1
data modify entity @e[tag=pixel_r22_c20,limit=1] background set value -4934446
data modify entity @e[tag=pixel_r23_c36,limit=1] background set value -1
data modify entity @e[tag=pixel_r25_c30,limit=1] background set value -4934446

# Fireplace mantel (top horizontal piece)
execute as @e[tag=projector_pixel,scores={holo.row=29..30,holo.col=44..84}] run data modify entity @s background set value -8237016
execute as @e[tag=projector_pixel,scores={holo.row=31,holo.col=44..84}] run data modify entity @s background set value -10197911

# Fireplace stone surround
execute as @e[tag=projector_pixel,scores={holo.row=32..58,holo.col=48..80}] run data modify entity @s background set value -12829631
# Stone texture (mortar lines)
execute as @e[tag=projector_pixel,scores={holo.row=37,holo.col=48..80}] run data modify entity @s background set value -10197911
execute as @e[tag=projector_pixel,scores={holo.row=46,holo.col=48..80}] run data modify entity @s background set value -10197911
execute as @e[tag=projector_pixel,scores={holo.row=55,holo.col=48..80}] run data modify entity @s background set value -10197911
execute as @e[tag=projector_pixel,scores={holo.row=32..58,holo.col=64}] run data modify entity @s background set value -10197911

# Fireplace inside (black hearth)
execute as @e[tag=projector_pixel,scores={holo.row=38..58,holo.col=54..74}] run data modify entity @s background set value -16777216

# Floor (dark wood)
execute as @e[tag=projector_pixel,scores={holo.row=59..71}] run data modify entity @s background set value -12836081
# Floor planks (vertical lines)
execute as @e[tag=projector_pixel,scores={holo.row=59..71,holo.col=20}] run data modify entity @s background set value -14149361
execute as @e[tag=projector_pixel,scores={holo.row=59..71,holo.col=48}] run data modify entity @s background set value -14149361
execute as @e[tag=projector_pixel,scores={holo.row=59..71,holo.col=78}] run data modify entity @s background set value -14149361
execute as @e[tag=projector_pixel,scores={holo.row=59..71,holo.col=104}] run data modify entity @s background set value -14149361
# Floor seam line
execute as @e[tag=projector_pixel,scores={holo.row=59,holo.col=0..127}] run data modify entity @s background set value -14149361

# Begin fire animation
function holo:art/cozy_house/tick
tellraw @a [{"text":"[ART] ","color":"light_purple","bold":true},{"text":"Cozy House","color":"gold"},{"text":" projecting. Stop with ","color":"gray"},{"text":"/function holo:art/stop","color":"yellow"}]
