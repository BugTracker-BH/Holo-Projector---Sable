# holo:art/aurora/tick — night sky + cycling aurora bands + twinkling stars + mountains
execute unless score #ART_ID holo.state matches 5 run return 0
scoreboard players add #ART_FRAME holo.frame 1

# === NIGHT SKY (3 dark gradient bands) ===
execute as @e[tag=projector_pixel,scores={holo.row=0..15}] run data modify entity @s background set value -16447463
execute as @e[tag=projector_pixel,scores={holo.row=16..30}] run data modify entity @s background set value -16118016
execute as @e[tag=projector_pixel,scores={holo.row=31..44}] run data modify entity @s background set value -15787716

# === STATIC DIM STARS (always visible) ===
data modify entity @e[tag=pixel_r3_c12,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r5_c95,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r28_c8,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r33_c120,limit=1] background set value -10855816

# === AURORA BANDS (3 stripes, color cycles by frame mod 4) ===
scoreboard players set #FOUR_A holo.v 4
scoreboard players operation #AP holo.tmp = #ART_FRAME holo.frame
scoreboard players operation #AP holo.tmp %= #FOUR_A holo.v

# Band 1: rows 8-13, full width, color phase = AP
execute if score #AP holo.tmp matches 0 run execute as @e[tag=projector_pixel,scores={holo.row=8..13,holo.col=8..119}] run data modify entity @s background set value -14099316
execute if score #AP holo.tmp matches 1 run execute as @e[tag=projector_pixel,scores={holo.row=8..13,holo.col=8..119}] run data modify entity @s background set value -12793646
execute if score #AP holo.tmp matches 2 run execute as @e[tag=projector_pixel,scores={holo.row=8..13,holo.col=8..119}] run data modify entity @s background set value -7581496
execute if score #AP holo.tmp matches 3 run execute as @e[tag=projector_pixel,scores={holo.row=8..13,holo.col=8..119}] run data modify entity @s background set value -2338636

# Band 2: rows 15-19, narrower, color phase = (AP+1) mod 4
execute if score #AP holo.tmp matches 0 run execute as @e[tag=projector_pixel,scores={holo.row=15..19,holo.col=14..114}] run data modify entity @s background set value -12793646
execute if score #AP holo.tmp matches 1 run execute as @e[tag=projector_pixel,scores={holo.row=15..19,holo.col=14..114}] run data modify entity @s background set value -7581496
execute if score #AP holo.tmp matches 2 run execute as @e[tag=projector_pixel,scores={holo.row=15..19,holo.col=14..114}] run data modify entity @s background set value -2338636
execute if score #AP holo.tmp matches 3 run execute as @e[tag=projector_pixel,scores={holo.row=15..19,holo.col=14..114}] run data modify entity @s background set value -14099316

# Band 3: rows 21-25, narrowest, color phase = (AP+2) mod 4
execute if score #AP holo.tmp matches 0 run execute as @e[tag=projector_pixel,scores={holo.row=21..25,holo.col=22..106}] run data modify entity @s background set value -7581496
execute if score #AP holo.tmp matches 1 run execute as @e[tag=projector_pixel,scores={holo.row=21..25,holo.col=22..106}] run data modify entity @s background set value -2338636
execute if score #AP holo.tmp matches 2 run execute as @e[tag=projector_pixel,scores={holo.row=21..25,holo.col=22..106}] run data modify entity @s background set value -14099316
execute if score #AP holo.tmp matches 3 run execute as @e[tag=projector_pixel,scores={holo.row=21..25,holo.col=22..106}] run data modify entity @s background set value -12793646

# Wispy aurora tendrils (random brighter spots in band area)
execute store result score #AT1 holo.tmp run random value 0..3
execute store result score #ATC1 holo.tmp run random value 16..112
execute store result storage holo:art row int 1 run random value 9..24
execute store result storage holo:art col int 1 run scoreboard players get #ATC1 holo.tmp
data modify storage holo:art color set value -1
function holo:art/draw with storage holo:art

execute store result score #ATC2 holo.tmp run random value 16..112
execute store result storage holo:art row int 1 run random value 10..22
execute store result storage holo:art col int 1 run scoreboard players get #ATC2 holo.tmp
data modify storage holo:art color set value -2338636
function holo:art/draw with storage holo:art

# === MOUNTAIN SILHOUETTES (very dark) ===
execute as @e[tag=projector_pixel,scores={holo.row=45..64,holo.col=0..30}] run data modify entity @s background set value -16118756
execute as @e[tag=projector_pixel,scores={holo.row=42..44,holo.col=8..22}] run data modify entity @s background set value -16118756
execute as @e[tag=projector_pixel,scores={holo.row=40..41,holo.col=12..18}] run data modify entity @s background set value -16118756

execute as @e[tag=projector_pixel,scores={holo.row=45..64,holo.col=25..70}] run data modify entity @s background set value -16118756
execute as @e[tag=projector_pixel,scores={holo.row=40..44,holo.col=38..58}] run data modify entity @s background set value -16118756
execute as @e[tag=projector_pixel,scores={holo.row=37..39,holo.col=44..52}] run data modify entity @s background set value -16118756
execute as @e[tag=projector_pixel,scores={holo.row=35..36,holo.col=46..50}] run data modify entity @s background set value -16118756

execute as @e[tag=projector_pixel,scores={holo.row=45..64,holo.col=65..127}] run data modify entity @s background set value -16118756
execute as @e[tag=projector_pixel,scores={holo.row=40..44,holo.col=88..108}] run data modify entity @s background set value -16118756
execute as @e[tag=projector_pixel,scores={holo.row=37..39,holo.col=94..102}] run data modify entity @s background set value -16118756
execute as @e[tag=projector_pixel,scores={holo.row=35..36,holo.col=96..100}] run data modify entity @s background set value -16118756

# Subtle mountain snow caps lit by aurora
execute as @e[tag=projector_pixel,scores={holo.row=37..38,holo.col=46..50}] run data modify entity @s background set value -12828326
execute as @e[tag=projector_pixel,scores={holo.row=37..38,holo.col=96..100}] run data modify entity @s background set value -12828326
execute as @e[tag=projector_pixel,scores={holo.row=42..42,holo.col=14..18}] run data modify entity @s background set value -12828326

# === SNOW GROUND (very bottom) ===
execute as @e[tag=projector_pixel,scores={holo.row=65..71}] run data modify entity @s background set value -13486256

# === TWINKLING STARS (8 stars, random brightness) ===
execute store result score #SA0 holo.tmp run random value 0..2
execute if score #SA0 holo.tmp matches 0 run data modify entity @e[tag=pixel_r2_c30,limit=1] background set value -10855816
execute if score #SA0 holo.tmp matches 1 run data modify entity @e[tag=pixel_r2_c30,limit=1] background set value -4934446
execute if score #SA0 holo.tmp matches 2 run data modify entity @e[tag=pixel_r2_c30,limit=1] background set value -16

execute store result score #SA1 holo.tmp run random value 0..2
execute if score #SA1 holo.tmp matches 0 run data modify entity @e[tag=pixel_r4_c70,limit=1] background set value -10855816
execute if score #SA1 holo.tmp matches 1 run data modify entity @e[tag=pixel_r4_c70,limit=1] background set value -4934446
execute if score #SA1 holo.tmp matches 2 run data modify entity @e[tag=pixel_r4_c70,limit=1] background set value -16

execute store result score #SA2 holo.tmp run random value 0..2
execute if score #SA2 holo.tmp matches 0 run data modify entity @e[tag=pixel_r6_c105,limit=1] background set value -10855816
execute if score #SA2 holo.tmp matches 1 run data modify entity @e[tag=pixel_r6_c105,limit=1] background set value -4934446
execute if score #SA2 holo.tmp matches 2 run data modify entity @e[tag=pixel_r6_c105,limit=1] background set value -16

execute store result score #SA3 holo.tmp run random value 0..2
execute if score #SA3 holo.tmp matches 0 run data modify entity @e[tag=pixel_r29_c50,limit=1] background set value -10855816
execute if score #SA3 holo.tmp matches 1 run data modify entity @e[tag=pixel_r29_c50,limit=1] background set value -4934446
execute if score #SA3 holo.tmp matches 2 run data modify entity @e[tag=pixel_r29_c50,limit=1] background set value -16

execute store result score #SA4 holo.tmp run random value 0..2
execute if score #SA4 holo.tmp matches 0 run data modify entity @e[tag=pixel_r31_c80,limit=1] background set value -10855816
execute if score #SA4 holo.tmp matches 1 run data modify entity @e[tag=pixel_r31_c80,limit=1] background set value -4934446
execute if score #SA4 holo.tmp matches 2 run data modify entity @e[tag=pixel_r31_c80,limit=1] background set value -16

execute store result score #SA5 holo.tmp run random value 0..2
execute if score #SA5 holo.tmp matches 0 run data modify entity @e[tag=pixel_r34_c20,limit=1] background set value -10855816
execute if score #SA5 holo.tmp matches 1 run data modify entity @e[tag=pixel_r34_c20,limit=1] background set value -4934446
execute if score #SA5 holo.tmp matches 2 run data modify entity @e[tag=pixel_r34_c20,limit=1] background set value -16

execute store result score #SA6 holo.tmp run random value 0..2
execute if score #SA6 holo.tmp matches 0 run data modify entity @e[tag=pixel_r4_c45,limit=1] background set value -10855816
execute if score #SA6 holo.tmp matches 1 run data modify entity @e[tag=pixel_r4_c45,limit=1] background set value -4934446
execute if score #SA6 holo.tmp matches 2 run data modify entity @e[tag=pixel_r4_c45,limit=1] background set value -16

execute store result score #SA7 holo.tmp run random value 0..2
execute if score #SA7 holo.tmp matches 0 run data modify entity @e[tag=pixel_r6_c115,limit=1] background set value -10855816
execute if score #SA7 holo.tmp matches 1 run data modify entity @e[tag=pixel_r6_c115,limit=1] background set value -4934446
execute if score #SA7 holo.tmp matches 2 run data modify entity @e[tag=pixel_r6_c115,limit=1] background set value -16

schedule function holo:art/aurora/tick 3t
