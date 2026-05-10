# holo:art/burning_candle/start — Tall lit candle with animated flame and warm halo
function holo:art/stop
execute unless entity @e[tag=projector_pixel,limit=1] run tellraw @a [{"text":"[ART] ","color":"red","bold":true},{"text":"Run /function helix_term:setup first.","color":"gray"}]
execute unless entity @e[tag=projector_pixel,limit=1] run return 0

scoreboard players set #ART_ID holo.state 8
scoreboard players set #ART_FRAME holo.frame 0

# === DARK WARM-TINTED ROOM BACKGROUND (3 bands) ===
execute as @e[tag=projector_pixel,scores={holo.row=0..30}] run data modify entity @s background set value -15857401
execute as @e[tag=projector_pixel,scores={holo.row=31..50}] run data modify entity @s background set value -15068663
execute as @e[tag=projector_pixel,scores={holo.row=51..71}] run data modify entity @s background set value -14018033

# === DISH SHADOW (large soft floor shadow under candle) ===
execute as @e[tag=projector_pixel,scores={holo.row=70..71,holo.col=44..84}] run data modify entity @s background set value -15068663

# === DISH (cream gray plate) ===
execute as @e[tag=projector_pixel,scores={holo.row=67..69,holo.col=54..74}] run data modify entity @s background set value -6253126
execute as @e[tag=projector_pixel,scores={holo.row=67,holo.col=54..55}] run data modify entity @s background set value -10200501
execute as @e[tag=projector_pixel,scores={holo.row=67,holo.col=73..74}] run data modify entity @s background set value -10200501
execute as @e[tag=projector_pixel,scores={holo.row=68,holo.col=56..72}] run data modify entity @s background set value -6253126
execute as @e[tag=projector_pixel,scores={holo.row=69,holo.col=56..72}] run data modify entity @s background set value -10200501

# === CANDLE BODY (cream/white, 9 wide × 30 tall) ===
execute as @e[tag=projector_pixel,scores={holo.row=37..66,holo.col=60..68}] run data modify entity @s background set value -989496
# Highlight stripe (left side, brighter)
execute as @e[tag=projector_pixel,scores={holo.row=37..66,holo.col=60..61}] run data modify entity @s background set value -2601
# Shadow stripe (right side, darker)
execute as @e[tag=projector_pixel,scores={holo.row=37..66,holo.col=67..68}] run data modify entity @s background set value -4937071

# === MELTED-WAX TOP RIM (slightly darkened due to flame heat) ===
execute as @e[tag=projector_pixel,scores={holo.row=37..38,holo.col=60..68}] run data modify entity @s background set value -4937071
# Wax drip down side
data modify entity @e[tag=pixel_r39_c61,limit=1] background set value -4937071
data modify entity @e[tag=pixel_r40_c61,limit=1] background set value -4937071
data modify entity @e[tag=pixel_r41_c61,limit=1] background set value -2601
data modify entity @e[tag=pixel_r42_c67,limit=1] background set value -4937071
data modify entity @e[tag=pixel_r43_c67,limit=1] background set value -4937071
data modify entity @e[tag=pixel_r50_c61,limit=1] background set value -4937071
data modify entity @e[tag=pixel_r51_c61,limit=1] background set value -4937071

# === WICK (4 pixels tall, dark, sticking up from candle top) ===
execute as @e[tag=projector_pixel,scores={holo.row=33..36,holo.col=64}] run data modify entity @s background set value -14149361

# Begin flame loop
function holo:art/burning_candle/tick
tellraw @a [{"text":"[ART] ","color":"light_purple","bold":true},{"text":"Burning Candle","color":"gold"},{"text":" projecting. Stop with ","color":"gray"},{"text":"/function holo:art/stop","color":"yellow"}]
