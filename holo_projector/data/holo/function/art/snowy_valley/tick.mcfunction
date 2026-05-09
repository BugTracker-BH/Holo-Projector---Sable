# holo:art/snowy_valley/tick — redraw scene + advance/draw 16 snowflakes
execute unless score #ART_ID holo.state matches 3 run return 0
scoreboard players add #ART_FRAME holo.frame 1

# === SKY (3 gradient bands) ===
execute as @e[tag=projector_pixel,scores={holo.row=0..11}] run data modify entity @s background set value -14141606
execute as @e[tag=projector_pixel,scores={holo.row=12..23}] run data modify entity @s background set value -11508596
execute as @e[tag=projector_pixel,scores={holo.row=24..38}] run data modify entity @s background set value -7558456

# === MOUNTAINS ===
# Far-left mountain (medium height)
execute as @e[tag=projector_pixel,scores={holo.row=22..45,holo.col=0..50}] run data modify entity @s background set value -12825761
execute as @e[tag=projector_pixel,scores={holo.row=20..21,holo.col=15..35}] run data modify entity @s background set value -12825761
execute as @e[tag=projector_pixel,scores={holo.row=18..19,holo.col=20..30}] run data modify entity @s background set value -12825761
# Snow cap
execute as @e[tag=projector_pixel,scores={holo.row=18..19,holo.col=22..28}] run data modify entity @s background set value -2301456
execute as @e[tag=projector_pixel,scores={holo.row=20..21,holo.col=18..32}] run data modify entity @s background set value -2301456
execute as @e[tag=projector_pixel,scores={holo.row=22,holo.col=15..35}] run data modify entity @s background set value -2301456

# Center mountain (tallest, lighter shade)
execute as @e[tag=projector_pixel,scores={holo.row=12..45,holo.col=40..90}] run data modify entity @s background set value -9536111
execute as @e[tag=projector_pixel,scores={holo.row=10..11,holo.col=58..72}] run data modify entity @s background set value -9536111
execute as @e[tag=projector_pixel,scores={holo.row=8..9,holo.col=62..68}] run data modify entity @s background set value -9536111
# Snow cap
execute as @e[tag=projector_pixel,scores={holo.row=8..9,holo.col=63..67}] run data modify entity @s background set value -2301456
execute as @e[tag=projector_pixel,scores={holo.row=10..11,holo.col=60..70}] run data modify entity @s background set value -2301456
execute as @e[tag=projector_pixel,scores={holo.row=12..14,holo.col=55..75}] run data modify entity @s background set value -2301456
execute as @e[tag=projector_pixel,scores={holo.row=15..16,holo.col=58..72}] run data modify entity @s background set value -2301456

# Right mountain
execute as @e[tag=projector_pixel,scores={holo.row=20..45,holo.col=80..127}] run data modify entity @s background set value -12825761
execute as @e[tag=projector_pixel,scores={holo.row=18..19,holo.col=98..114}] run data modify entity @s background set value -12825761
execute as @e[tag=projector_pixel,scores={holo.row=16..17,holo.col=102..110}] run data modify entity @s background set value -12825761
# Snow cap
execute as @e[tag=projector_pixel,scores={holo.row=16..17,holo.col=104..108}] run data modify entity @s background set value -2301456
execute as @e[tag=projector_pixel,scores={holo.row=18..19,holo.col=100..112}] run data modify entity @s background set value -2301456
execute as @e[tag=projector_pixel,scores={holo.row=20,holo.col=98..114}] run data modify entity @s background set value -2301456

# === GROUND SNOW ===
execute as @e[tag=projector_pixel,scores={holo.row=46..71}] run data modify entity @s background set value -1643531

# === PINE TREES ===
# Tree 1 (left)
execute as @e[tag=projector_pixel,scores={holo.row=46..50,holo.col=18}] run data modify entity @s background set value -13492721
execute as @e[tag=projector_pixel,scores={holo.row=44..45,holo.col=17..19}] run data modify entity @s background set value -15783911
execute as @e[tag=projector_pixel,scores={holo.row=42..43,holo.col=16..20}] run data modify entity @s background set value -15783911
execute as @e[tag=projector_pixel,scores={holo.row=40..41,holo.col=15..21}] run data modify entity @s background set value -15783911
execute as @e[tag=projector_pixel,scores={holo.row=38..39,holo.col=16..20}] run data modify entity @s background set value -15783911
execute as @e[tag=projector_pixel,scores={holo.row=36..37,holo.col=17..19}] run data modify entity @s background set value -15783911
execute as @e[tag=projector_pixel,scores={holo.row=35,holo.col=18}] run data modify entity @s background set value -15783911
data modify entity @e[tag=pixel_r36_c19,limit=1] background set value -2301456
data modify entity @e[tag=pixel_r39_c20,limit=1] background set value -2301456
data modify entity @e[tag=pixel_r41_c15,limit=1] background set value -2301456

# Tree 2 (right)
execute as @e[tag=projector_pixel,scores={holo.row=46..50,holo.col=104}] run data modify entity @s background set value -13492721
execute as @e[tag=projector_pixel,scores={holo.row=44..45,holo.col=103..105}] run data modify entity @s background set value -15783911
execute as @e[tag=projector_pixel,scores={holo.row=42..43,holo.col=102..106}] run data modify entity @s background set value -15783911
execute as @e[tag=projector_pixel,scores={holo.row=40..41,holo.col=101..107}] run data modify entity @s background set value -15783911
execute as @e[tag=projector_pixel,scores={holo.row=38..39,holo.col=102..106}] run data modify entity @s background set value -15783911
execute as @e[tag=projector_pixel,scores={holo.row=36..37,holo.col=103..105}] run data modify entity @s background set value -15783911
execute as @e[tag=projector_pixel,scores={holo.row=35,holo.col=104}] run data modify entity @s background set value -15783911
data modify entity @e[tag=pixel_r37_c105,limit=1] background set value -2301456
data modify entity @e[tag=pixel_r40_c106,limit=1] background set value -2301456

# === SNOWFLAKES (advance Y, wrap at 56, draw white pixel) ===
data modify storage holo:art color set value -1

scoreboard players add #SF0 holo.tmp 1
execute if score #SF0 holo.tmp matches 56.. run scoreboard players set #SF0 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #SF0 holo.tmp
data modify storage holo:art col set value 6
function holo:art/draw with storage holo:art

scoreboard players add #SF1 holo.tmp 1
execute if score #SF1 holo.tmp matches 56.. run scoreboard players set #SF1 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #SF1 holo.tmp
data modify storage holo:art col set value 14
function holo:art/draw with storage holo:art

scoreboard players add #SF2 holo.tmp 1
execute if score #SF2 holo.tmp matches 56.. run scoreboard players set #SF2 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #SF2 holo.tmp
data modify storage holo:art col set value 26
function holo:art/draw with storage holo:art

scoreboard players add #SF3 holo.tmp 1
execute if score #SF3 holo.tmp matches 56.. run scoreboard players set #SF3 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #SF3 holo.tmp
data modify storage holo:art col set value 34
function holo:art/draw with storage holo:art

scoreboard players add #SF4 holo.tmp 1
execute if score #SF4 holo.tmp matches 56.. run scoreboard players set #SF4 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #SF4 holo.tmp
data modify storage holo:art col set value 44
function holo:art/draw with storage holo:art

scoreboard players add #SF5 holo.tmp 1
execute if score #SF5 holo.tmp matches 56.. run scoreboard players set #SF5 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #SF5 holo.tmp
data modify storage holo:art col set value 52
function holo:art/draw with storage holo:art

scoreboard players add #SF6 holo.tmp 1
execute if score #SF6 holo.tmp matches 56.. run scoreboard players set #SF6 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #SF6 holo.tmp
data modify storage holo:art col set value 60
function holo:art/draw with storage holo:art

scoreboard players add #SF7 holo.tmp 1
execute if score #SF7 holo.tmp matches 56.. run scoreboard players set #SF7 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #SF7 holo.tmp
data modify storage holo:art col set value 68
function holo:art/draw with storage holo:art

scoreboard players add #SF8 holo.tmp 1
execute if score #SF8 holo.tmp matches 56.. run scoreboard players set #SF8 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #SF8 holo.tmp
data modify storage holo:art col set value 76
function holo:art/draw with storage holo:art

scoreboard players add #SF9 holo.tmp 1
execute if score #SF9 holo.tmp matches 56.. run scoreboard players set #SF9 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #SF9 holo.tmp
data modify storage holo:art col set value 84
function holo:art/draw with storage holo:art

scoreboard players add #SF10 holo.tmp 1
execute if score #SF10 holo.tmp matches 56.. run scoreboard players set #SF10 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #SF10 holo.tmp
data modify storage holo:art col set value 92
function holo:art/draw with storage holo:art

scoreboard players add #SF11 holo.tmp 1
execute if score #SF11 holo.tmp matches 56.. run scoreboard players set #SF11 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #SF11 holo.tmp
data modify storage holo:art col set value 100
function holo:art/draw with storage holo:art

scoreboard players add #SF12 holo.tmp 1
execute if score #SF12 holo.tmp matches 56.. run scoreboard players set #SF12 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #SF12 holo.tmp
data modify storage holo:art col set value 110
function holo:art/draw with storage holo:art

scoreboard players add #SF13 holo.tmp 1
execute if score #SF13 holo.tmp matches 56.. run scoreboard players set #SF13 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #SF13 holo.tmp
data modify storage holo:art col set value 120
function holo:art/draw with storage holo:art

scoreboard players add #SF14 holo.tmp 1
execute if score #SF14 holo.tmp matches 56.. run scoreboard players set #SF14 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #SF14 holo.tmp
data modify storage holo:art col set value 50
function holo:art/draw with storage holo:art

scoreboard players add #SF15 holo.tmp 1
execute if score #SF15 holo.tmp matches 56.. run scoreboard players set #SF15 holo.tmp 0
execute store result storage holo:art row int 1 run scoreboard players get #SF15 holo.tmp
data modify storage holo:art col set value 88
function holo:art/draw with storage holo:art

schedule function holo:art/snowy_valley/tick 2t
