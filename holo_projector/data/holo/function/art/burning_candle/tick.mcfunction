# holo:art/burning_candle/tick — animate halo + 4-color teardrop flame + ember sparks
execute unless score #ART_ID holo.state matches 8 run return 0
scoreboard players add #ART_FRAME holo.frame 1

# === REPAINT WARM HALO (3 layers) — clears any stale embers above candle ===
# Layer 1: outermost (large, faint warm tint)
execute as @e[tag=projector_pixel,scores={holo.row=12..36,holo.col=46..82}] run data modify entity @s background set value -12637681
# Layer 2: mid halo
execute as @e[tag=projector_pixel,scores={holo.row=16..34,holo.col=52..76}] run data modify entity @s background set value -8762854
# Layer 3: inner halo (close around flame)
execute as @e[tag=projector_pixel,scores={holo.row=20..32,holo.col=56..72}] run data modify entity @s background set value -3768256

# === RE-DRAW WICK (covered by halo) ===
execute as @e[tag=projector_pixel,scores={holo.row=33..36,holo.col=64}] run data modify entity @s background set value -14149361

# === FLAME — TEARDROP (4 layers, gets narrower toward top) ===
# Outer red
execute as @e[tag=projector_pixel,scores={holo.row=27..32,holo.col=61..67}] run data modify entity @s background set value -4970486
execute as @e[tag=projector_pixel,scores={holo.row=26,holo.col=62..66}] run data modify entity @s background set value -4970486
execute as @e[tag=projector_pixel,scores={holo.row=25,holo.col=63..65}] run data modify entity @s background set value -4970486
execute as @e[tag=projector_pixel,scores={holo.row=33,holo.col=63..65}] run data modify entity @s background set value -4970486
# Mid orange
execute as @e[tag=projector_pixel,scores={holo.row=27..32,holo.col=62..66}] run data modify entity @s background set value -34786
execute as @e[tag=projector_pixel,scores={holo.row=26,holo.col=63..65}] run data modify entity @s background set value -34786
# Inner yellow
execute as @e[tag=projector_pixel,scores={holo.row=28..31,holo.col=63..65}] run data modify entity @s background set value -11696
# White-hot core
execute as @e[tag=projector_pixel,scores={holo.row=29..30,holo.col=64}] run data modify entity @s background set value -56

# === RANDOM TOP TONGUES (tip of flame flickers) ===
execute store result score #FT holo.tmp run random value 0..3
execute if score #FT holo.tmp matches 0 run data modify entity @e[tag=pixel_r24_c63,limit=1] background set value -34786
execute if score #FT holo.tmp matches 1 run data modify entity @e[tag=pixel_r24_c64,limit=1] background set value -34786
execute if score #FT holo.tmp matches 2 run data modify entity @e[tag=pixel_r24_c65,limit=1] background set value -34786
execute if score #FT holo.tmp matches 3 run data modify entity @e[tag=pixel_r23_c64,limit=1] background set value -11696

# === RANDOM SIDE FLICKER (left or right edge of flame brightens) ===
execute store result score #FS holo.tmp run random value 0..3
execute if score #FS holo.tmp matches 0 run data modify entity @e[tag=pixel_r29_c61,limit=1] background set value -34786
execute if score #FS holo.tmp matches 1 run data modify entity @e[tag=pixel_r30_c67,limit=1] background set value -34786
execute if score #FS holo.tmp matches 2 run data modify entity @e[tag=pixel_r28_c66,limit=1] background set value -11696
execute if score #FS holo.tmp matches 3 run data modify entity @e[tag=pixel_r31_c62,limit=1] background set value -11696

# === EMBER SPARK rising (random pixel in halo area) ===
execute store result score #ESC holo.tmp run random value 60..68
execute store result score #ESR holo.tmp run random value 13..22
execute store result storage holo:art row int 1 run scoreboard players get #ESR holo.tmp
execute store result storage holo:art col int 1 run scoreboard players get #ESC holo.tmp
data modify storage holo:art color set value -23576
function holo:art/draw with storage holo:art

# Second spark (less frequent — only when frame mod 2 == 0)
scoreboard players set #TWO_C holo.v 2
scoreboard players operation #ESF holo.tmp = #ART_FRAME holo.frame
scoreboard players operation #ESF holo.tmp %= #TWO_C holo.v
execute if score #ESF holo.tmp matches 0 run execute store result score #ESC2 holo.tmp run random value 56..72
execute if score #ESF holo.tmp matches 0 run execute store result score #ESR2 holo.tmp run random value 16..24
execute if score #ESF holo.tmp matches 0 run execute store result storage holo:art row int 1 run scoreboard players get #ESR2 holo.tmp
execute if score #ESF holo.tmp matches 0 run execute store result storage holo:art col int 1 run scoreboard players get #ESC2 holo.tmp
execute if score #ESF holo.tmp matches 0 run data modify storage holo:art color set value -11696
execute if score #ESF holo.tmp matches 0 run function holo:art/draw with storage holo:art

schedule function holo:art/burning_candle/tick 3t
