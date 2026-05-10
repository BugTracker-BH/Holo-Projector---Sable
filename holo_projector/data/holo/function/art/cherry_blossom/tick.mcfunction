# holo:art/cherry_blossom/tick — pastel sky + tree + falling petals
execute unless score #ART_ID holo.state matches 7 run return 0
scoreboard players add #ART_FRAME holo.frame 1

# === SKY (3 pastel gradient bands) ===
execute as @e[tag=projector_pixel,scores={holo.row=0..15}] run data modify entity @s background set value -14116
execute as @e[tag=projector_pixel,scores={holo.row=16..30}] run data modify entity @s background set value -19256
execute as @e[tag=projector_pixel,scores={holo.row=31..44}] run data modify entity @s background set value -9036

# === SUN HALO + BODY (upper-right) ===
execute as @e[tag=projector_pixel,scores={holo.row=4..14,holo.col=98..118}] run data modify entity @s background set value -6476
execute as @e[tag=projector_pixel,scores={holo.row=6..12,holo.col=102..114}] run data modify entity @s background set value -1336
# Round corners
execute as @e[tag=projector_pixel,scores={holo.row=6,holo.col=102..103}] run data modify entity @s background set value -6476
execute as @e[tag=projector_pixel,scores={holo.row=6,holo.col=113..114}] run data modify entity @s background set value -6476
execute as @e[tag=projector_pixel,scores={holo.row=12,holo.col=102..103}] run data modify entity @s background set value -6476
execute as @e[tag=projector_pixel,scores={holo.row=12,holo.col=113..114}] run data modify entity @s background set value -6476

# === GROUND (grass) ===
execute as @e[tag=projector_pixel,scores={holo.row=63..71}] run data modify entity @s background set value -4924266
execute as @e[tag=projector_pixel,scores={holo.row=63}] run data modify entity @s background set value -7555986
# Subtle grass tufts
data modify entity @e[tag=pixel_r65_c10,limit=1] background set value -7555986
data modify entity @e[tag=pixel_r66_c25,limit=1] background set value -7555986
data modify entity @e[tag=pixel_r67_c45,limit=1] background set value -7555986
data modify entity @e[tag=pixel_r65_c95,limit=1] background set value -7555986
data modify entity @e[tag=pixel_r66_c115,limit=1] background set value -7555986

# === TREE TRUNK (dark brown, tapered) ===
execute as @e[tag=projector_pixel,scores={holo.row=44..62,holo.col=60..66}] run data modify entity @s background set value -12836076
# Trunk base widens at ground
execute as @e[tag=projector_pixel,scores={holo.row=60..62,holo.col=58..68}] run data modify entity @s background set value -12836076
# Trunk highlight (lighter on left side)
execute as @e[tag=projector_pixel,scores={holo.row=44..62,holo.col=61}] run data modify entity @s background set value -10863581

# === BRANCHES (peeking out from canopy edges) ===
execute as @e[tag=projector_pixel,scores={holo.row=42..43,holo.col=54..60}] run data modify entity @s background set value -12836076
execute as @e[tag=projector_pixel,scores={holo.row=42..43,holo.col=66..72}] run data modify entity @s background set value -12836076
execute as @e[tag=projector_pixel,scores={holo.row=38..39,holo.col=88..94}] run data modify entity @s background set value -12836076
execute as @e[tag=projector_pixel,scores={holo.row=38..39,holo.col=32..38}] run data modify entity @s background set value -12836076

# === CANOPY — outer (lightest pink, biggest) ===
execute as @e[tag=projector_pixel,scores={holo.row=14..44,holo.col=32..96}] run data modify entity @s background set value -11551
# Trim outer corners back to sky
execute as @e[tag=projector_pixel,scores={holo.row=14..15,holo.col=32..40}] run data modify entity @s background set value -14116
execute as @e[tag=projector_pixel,scores={holo.row=14..15,holo.col=88..96}] run data modify entity @s background set value -14116
execute as @e[tag=projector_pixel,scores={holo.row=14,holo.col=41..44}] run data modify entity @s background set value -14116
execute as @e[tag=projector_pixel,scores={holo.row=14,holo.col=84..87}] run data modify entity @s background set value -14116
execute as @e[tag=projector_pixel,scores={holo.row=42..44,holo.col=32..38}] run data modify entity @s background set value -9036
execute as @e[tag=projector_pixel,scores={holo.row=42..44,holo.col=90..96}] run data modify entity @s background set value -9036
execute as @e[tag=projector_pixel,scores={holo.row=44,holo.col=39..42}] run data modify entity @s background set value -9036
execute as @e[tag=projector_pixel,scores={holo.row=44,holo.col=86..89}] run data modify entity @s background set value -9036

# === CANOPY — middle (medium pink) ===
execute as @e[tag=projector_pixel,scores={holo.row=18..40,holo.col=38..90}] run data modify entity @s background set value -1009986
execute as @e[tag=projector_pixel,scores={holo.row=18,holo.col=38..43}] run data modify entity @s background set value -11551
execute as @e[tag=projector_pixel,scores={holo.row=18,holo.col=85..90}] run data modify entity @s background set value -11551
execute as @e[tag=projector_pixel,scores={holo.row=40,holo.col=38..42}] run data modify entity @s background set value -11551
execute as @e[tag=projector_pixel,scores={holo.row=40,holo.col=86..90}] run data modify entity @s background set value -11551

# === CANOPY — inner shade (deeper pink, gives volume) ===
execute as @e[tag=projector_pixel,scores={holo.row=24..36,holo.col=44..84}] run data modify entity @s background set value -3644266
execute as @e[tag=projector_pixel,scores={holo.row=24,holo.col=44..47}] run data modify entity @s background set value -1009986
execute as @e[tag=projector_pixel,scores={holo.row=24,holo.col=81..84}] run data modify entity @s background set value -1009986
execute as @e[tag=projector_pixel,scores={holo.row=36,holo.col=44..47}] run data modify entity @s background set value -1009986
execute as @e[tag=projector_pixel,scores={holo.row=36,holo.col=81..84}] run data modify entity @s background set value -1009986

# === WHITE BLOSSOM HIGHLIGHTS (scattered) ===
data modify entity @e[tag=pixel_r20_c50,limit=1] background set value -1
data modify entity @e[tag=pixel_r22_c70,limit=1] background set value -1
data modify entity @e[tag=pixel_r26_c42,limit=1] background set value -1
data modify entity @e[tag=pixel_r28_c80,limit=1] background set value -1
data modify entity @e[tag=pixel_r30_c56,limit=1] background set value -1
data modify entity @e[tag=pixel_r32_c74,limit=1] background set value -1
data modify entity @e[tag=pixel_r34_c50,limit=1] background set value -1
data modify entity @e[tag=pixel_r38_c64,limit=1] background set value -1
data modify entity @e[tag=pixel_r25_c64,limit=1] background set value -1
data modify entity @e[tag=pixel_r35_c84,limit=1] background set value -1

# === FALLING PETALS (16, drift down then wrap to top) ===
data modify storage holo:art color set value -1009986

scoreboard players add #PT0 holo.tmp 1
execute if score #PT0 holo.tmp matches 62.. run scoreboard players set #PT0 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #PT0 holo.tmp
data modify storage holo:art col set value 8
function holo:art/draw with storage holo:art

scoreboard players add #PT1 holo.tmp 1
execute if score #PT1 holo.tmp matches 62.. run scoreboard players set #PT1 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #PT1 holo.tmp
data modify storage holo:art col set value 18
function holo:art/draw with storage holo:art

scoreboard players add #PT2 holo.tmp 1
execute if score #PT2 holo.tmp matches 62.. run scoreboard players set #PT2 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #PT2 holo.tmp
data modify storage holo:art col set value 28
function holo:art/draw with storage holo:art

scoreboard players add #PT3 holo.tmp 1
execute if score #PT3 holo.tmp matches 62.. run scoreboard players set #PT3 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #PT3 holo.tmp
data modify storage holo:art col set value 100
function holo:art/draw with storage holo:art

scoreboard players add #PT4 holo.tmp 1
execute if score #PT4 holo.tmp matches 62.. run scoreboard players set #PT4 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #PT4 holo.tmp
data modify storage holo:art col set value 110
function holo:art/draw with storage holo:art

scoreboard players add #PT5 holo.tmp 1
execute if score #PT5 holo.tmp matches 62.. run scoreboard players set #PT5 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #PT5 holo.tmp
data modify storage holo:art col set value 120
function holo:art/draw with storage holo:art

# Switch to deeper pink for half the petals (variety)
data modify storage holo:art color set value -3644266

scoreboard players add #PT6 holo.tmp 1
execute if score #PT6 holo.tmp matches 62.. run scoreboard players set #PT6 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #PT6 holo.tmp
data modify storage holo:art col set value 14
function holo:art/draw with storage holo:art

scoreboard players add #PT7 holo.tmp 1
execute if score #PT7 holo.tmp matches 62.. run scoreboard players set #PT7 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #PT7 holo.tmp
data modify storage holo:art col set value 22
function holo:art/draw with storage holo:art

scoreboard players add #PT8 holo.tmp 1
execute if score #PT8 holo.tmp matches 62.. run scoreboard players set #PT8 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #PT8 holo.tmp
data modify storage holo:art col set value 104
function holo:art/draw with storage holo:art

scoreboard players add #PT9 holo.tmp 1
execute if score #PT9 holo.tmp matches 62.. run scoreboard players set #PT9 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #PT9 holo.tmp
data modify storage holo:art col set value 116
function holo:art/draw with storage holo:art

# Switch to white petals (lightest, sparse)
data modify storage holo:art color set value -1

scoreboard players add #PT10 holo.tmp 1
execute if score #PT10 holo.tmp matches 62.. run scoreboard players set #PT10 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #PT10 holo.tmp
data modify storage holo:art col set value 4
function holo:art/draw with storage holo:art

scoreboard players add #PT11 holo.tmp 1
execute if score #PT11 holo.tmp matches 62.. run scoreboard players set #PT11 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #PT11 holo.tmp
data modify storage holo:art col set value 124
function holo:art/draw with storage holo:art

# More med-pink petals (in between tree areas)
data modify storage holo:art color set value -1009986

scoreboard players add #PT12 holo.tmp 1
execute if score #PT12 holo.tmp matches 62.. run scoreboard players set #PT12 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #PT12 holo.tmp
data modify storage holo:art col set value 24
function holo:art/draw with storage holo:art

scoreboard players add #PT13 holo.tmp 1
execute if score #PT13 holo.tmp matches 62.. run scoreboard players set #PT13 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #PT13 holo.tmp
data modify storage holo:art col set value 108
function holo:art/draw with storage holo:art

scoreboard players add #PT14 holo.tmp 1
execute if score #PT14 holo.tmp matches 62.. run scoreboard players set #PT14 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #PT14 holo.tmp
data modify storage holo:art col set value 12
function holo:art/draw with storage holo:art

scoreboard players add #PT15 holo.tmp 1
execute if score #PT15 holo.tmp matches 62.. run scoreboard players set #PT15 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #PT15 holo.tmp
data modify storage holo:art col set value 114
function holo:art/draw with storage holo:art

schedule function holo:art/cherry_blossom/tick 3t
