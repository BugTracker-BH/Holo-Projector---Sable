# holo:art/pulsing_heart/tick — heart pulses through 3 sizes/colors + twinkling sparkles
execute unless score #ART_ID holo.state matches 9 run return 0
scoreboard players add #ART_FRAME holo.frame 1

# === Compute pulse phase = (FRAME/4) mod 3 ===
scoreboard players set #FOUR_PH holo.v 4
scoreboard players set #THREE_PH holo.v 3
scoreboard players operation #PH holo.tmp = #ART_FRAME holo.frame
scoreboard players operation #PH holo.tmp /= #FOUR_PH holo.v
scoreboard players operation #PH holo.tmp %= #THREE_PH holo.v

# === CLEAR HEART AREA to inner glow (so previous frame's heart shape disappears) ===
execute as @e[tag=projector_pixel,scores={holo.row=32..39,holo.col=60..68}] run data modify entity @s background set value -45016

# === PHASE 0: small dim heart (3x3) ===
execute if score #PH holo.tmp matches 0 run data modify entity @e[tag=pixel_r35_c63,limit=1] background set value -7594436
execute if score #PH holo.tmp matches 0 run data modify entity @e[tag=pixel_r35_c65,limit=1] background set value -7594436
execute if score #PH holo.tmp matches 0 run data modify entity @e[tag=pixel_r36_c63,limit=1] background set value -7594436
execute if score #PH holo.tmp matches 0 run data modify entity @e[tag=pixel_r36_c64,limit=1] background set value -7594436
execute if score #PH holo.tmp matches 0 run data modify entity @e[tag=pixel_r36_c65,limit=1] background set value -7594436
execute if score #PH holo.tmp matches 0 run data modify entity @e[tag=pixel_r37_c64,limit=1] background set value -7594436

# === PHASE 1: medium heart (5x4) ===
execute if score #PH holo.tmp matches 1 run data modify entity @e[tag=pixel_r34_c62,limit=1] background set value -3657136
execute if score #PH holo.tmp matches 1 run data modify entity @e[tag=pixel_r34_c63,limit=1] background set value -3657136
execute if score #PH holo.tmp matches 1 run data modify entity @e[tag=pixel_r34_c65,limit=1] background set value -3657136
execute if score #PH holo.tmp matches 1 run data modify entity @e[tag=pixel_r34_c66,limit=1] background set value -3657136
execute if score #PH holo.tmp matches 1 run data modify entity @e[tag=pixel_r35_c62,limit=1] background set value -3657136
execute if score #PH holo.tmp matches 1 run data modify entity @e[tag=pixel_r35_c63,limit=1] background set value -3657136
execute if score #PH holo.tmp matches 1 run data modify entity @e[tag=pixel_r35_c64,limit=1] background set value -3657136
execute if score #PH holo.tmp matches 1 run data modify entity @e[tag=pixel_r35_c65,limit=1] background set value -3657136
execute if score #PH holo.tmp matches 1 run data modify entity @e[tag=pixel_r35_c66,limit=1] background set value -3657136
execute if score #PH holo.tmp matches 1 run data modify entity @e[tag=pixel_r36_c63,limit=1] background set value -3657136
execute if score #PH holo.tmp matches 1 run data modify entity @e[tag=pixel_r36_c64,limit=1] background set value -3657136
execute if score #PH holo.tmp matches 1 run data modify entity @e[tag=pixel_r36_c65,limit=1] background set value -3657136
execute if score #PH holo.tmp matches 1 run data modify entity @e[tag=pixel_r37_c64,limit=1] background set value -3657136
# Inner highlight (white-pink shimmer)
execute if score #PH holo.tmp matches 1 run data modify entity @e[tag=pixel_r35_c64,limit=1] background set value -14116

# === PHASE 2: large bright heart (7x6) ===
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r33_c62,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r33_c63,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r33_c65,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r33_c66,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r34_c61,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r34_c62,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r34_c63,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r34_c64,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r34_c65,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r34_c66,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r34_c67,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r35_c61,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r35_c62,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r35_c63,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r35_c64,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r35_c65,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r35_c66,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r35_c67,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r36_c62,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r36_c63,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r36_c64,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r36_c65,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r36_c66,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r37_c63,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r37_c64,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r37_c65,limit=1] background set value -45016
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r38_c64,limit=1] background set value -45016
# Inner white-pink highlight (gives volume)
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r34_c63,limit=1] background set value -14116
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r34_c65,limit=1] background set value -14116
execute if score #PH holo.tmp matches 2 run data modify entity @e[tag=pixel_r35_c64,limit=1] background set value -1

# === SPARKLES (8 fixed positions, random brightness 0/1) ===
execute store result score #SP0 holo.tmp run random value 0..1
execute if score #SP0 holo.tmp matches 0 run data modify entity @e[tag=pixel_r18_c30,limit=1] background set value -2328396
execute if score #SP0 holo.tmp matches 1 run data modify entity @e[tag=pixel_r18_c30,limit=1] background set value -1

execute store result score #SP1 holo.tmp run random value 0..1
execute if score #SP1 holo.tmp matches 0 run data modify entity @e[tag=pixel_r12_c80,limit=1] background set value -2328396
execute if score #SP1 holo.tmp matches 1 run data modify entity @e[tag=pixel_r12_c80,limit=1] background set value -1

execute store result score #SP2 holo.tmp run random value 0..1
execute if score #SP2 holo.tmp matches 0 run data modify entity @e[tag=pixel_r24_c100,limit=1] background set value -2328396
execute if score #SP2 holo.tmp matches 1 run data modify entity @e[tag=pixel_r24_c100,limit=1] background set value -1

execute store result score #SP3 holo.tmp run random value 0..1
execute if score #SP3 holo.tmp matches 0 run data modify entity @e[tag=pixel_r48_c20,limit=1] background set value -3618596
execute if score #SP3 holo.tmp matches 1 run data modify entity @e[tag=pixel_r48_c20,limit=1] background set value -1

execute store result score #SP4 holo.tmp run random value 0..1
execute if score #SP4 holo.tmp matches 0 run data modify entity @e[tag=pixel_r56_c108,limit=1] background set value -3618596
execute if score #SP4 holo.tmp matches 1 run data modify entity @e[tag=pixel_r56_c108,limit=1] background set value -1

execute store result score #SP5 holo.tmp run random value 0..1
execute if score #SP5 holo.tmp matches 0 run data modify entity @e[tag=pixel_r62_c70,limit=1] background set value -3618596
execute if score #SP5 holo.tmp matches 1 run data modify entity @e[tag=pixel_r62_c70,limit=1] background set value -1

execute store result score #SP6 holo.tmp run random value 0..1
execute if score #SP6 holo.tmp matches 0 run data modify entity @e[tag=pixel_r68_c45,limit=1] background set value -3618596
execute if score #SP6 holo.tmp matches 1 run data modify entity @e[tag=pixel_r68_c45,limit=1] background set value -1

execute store result score #SP7 holo.tmp run random value 0..1
execute if score #SP7 holo.tmp matches 0 run data modify entity @e[tag=pixel_r6_c64,limit=1] background set value -2328396
execute if score #SP7 holo.tmp matches 1 run data modify entity @e[tag=pixel_r6_c64,limit=1] background set value -1

schedule function holo:art/pulsing_heart/tick 3t
