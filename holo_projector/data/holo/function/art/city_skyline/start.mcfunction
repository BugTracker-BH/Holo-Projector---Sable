# holo:art/city_skyline/start — Night cityscape with twinkling windows
function holo:art/stop
execute unless entity @e[tag=projector_pixel,limit=1] run tellraw @a [{"text":"[ART] ","color":"red","bold":true},{"text":"Run /function helix_term:setup first.","color":"gray"}]
execute unless entity @e[tag=projector_pixel,limit=1] run return 0

scoreboard players set #ART_ID holo.state 6
scoreboard players set #ART_FRAME holo.frame 0

# === SKY (3 dark gradient bands, top→horizon) ===
execute as @e[tag=projector_pixel,scores={holo.row=0..15}] run data modify entity @s background set value -16249821
execute as @e[tag=projector_pixel,scores={holo.row=16..30}] run data modify entity @s background set value -15789006
execute as @e[tag=projector_pixel,scores={holo.row=31..40}] run data modify entity @s background set value -14475711

# === MOON HALO + BODY ===
execute as @e[tag=projector_pixel,scores={holo.row=4..18,holo.col=92..114}] run data modify entity @s background set value -3618636
execute as @e[tag=projector_pixel,scores={holo.row=6..16,holo.col=95..111}] run data modify entity @s background set value -986916
# Round moon corners
execute as @e[tag=projector_pixel,scores={holo.row=6,holo.col=95..96}] run data modify entity @s background set value -3618636
execute as @e[tag=projector_pixel,scores={holo.row=6,holo.col=110..111}] run data modify entity @s background set value -3618636
execute as @e[tag=projector_pixel,scores={holo.row=16,holo.col=95..96}] run data modify entity @s background set value -3618636
execute as @e[tag=projector_pixel,scores={holo.row=16,holo.col=110..111}] run data modify entity @s background set value -3618636
# Moon craters (subtle)
data modify entity @e[tag=pixel_r9_c100,limit=1] background set value -3618636
data modify entity @e[tag=pixel_r12_c106,limit=1] background set value -3618636
data modify entity @e[tag=pixel_r13_c98,limit=1] background set value -3618636

# === STATIC BACKGROUND STARS ===
data modify entity @e[tag=pixel_r3_c20,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r5_c45,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r12_c30,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r18_c10,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r25_c60,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r30_c80,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r35_c5,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r28_c120,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r8_c70,limit=1] background set value -4934446
data modify entity @e[tag=pixel_r22_c40,limit=1] background set value -4934446

# === BUILDINGS (alternating dark / med-dark for depth) ===
execute as @e[tag=projector_pixel,scores={holo.row=42..71,holo.col=0..14}] run data modify entity @s background set value -16250343
execute as @e[tag=projector_pixel,scores={holo.row=50..71,holo.col=15..25}] run data modify entity @s background set value -15789533
execute as @e[tag=projector_pixel,scores={holo.row=37..71,holo.col=26..40}] run data modify entity @s background set value -16250343
execute as @e[tag=projector_pixel,scores={holo.row=33..36,holo.col=30..36}] run data modify entity @s background set value -16250343
# Antenna on tallest building
execute as @e[tag=projector_pixel,scores={holo.row=29..32,holo.col=33}] run data modify entity @s background set value -16250343
data modify entity @e[tag=pixel_r28_c33,limit=1] background set value -9116

execute as @e[tag=projector_pixel,scores={holo.row=48..71,holo.col=41..55}] run data modify entity @s background set value -15789533
execute as @e[tag=projector_pixel,scores={holo.row=44..71,holo.col=56..72}] run data modify entity @s background set value -16250343
# Rooftop water tank on building 5
execute as @e[tag=projector_pixel,scores={holo.row=40..43,holo.col=62..68}] run data modify entity @s background set value -16250343
execute as @e[tag=projector_pixel,scores={holo.row=55..71,holo.col=73..85}] run data modify entity @s background set value -15789533
execute as @e[tag=projector_pixel,scores={holo.row=39..71,holo.col=86..100}] run data modify entity @s background set value -16250343
# Antenna on bldg 7
execute as @e[tag=projector_pixel,scores={holo.row=35..38,holo.col=92}] run data modify entity @s background set value -16250343
execute as @e[tag=projector_pixel,scores={holo.row=53..71,holo.col=101..114}] run data modify entity @s background set value -15789533
execute as @e[tag=projector_pixel,scores={holo.row=46..71,holo.col=115..127}] run data modify entity @s background set value -16250343

# Begin window twinkle loop
function holo:art/city_skyline/tick
tellraw @a [{"text":"[ART] ","color":"light_purple","bold":true},{"text":"City Skyline","color":"yellow"},{"text":" projecting. Stop with ","color":"gray"},{"text":"/function holo:art/stop","color":"yellow"}]
