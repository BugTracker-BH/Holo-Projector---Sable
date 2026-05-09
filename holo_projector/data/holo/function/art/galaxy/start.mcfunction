# holo:art/galaxy/start — Cosmic galaxy with Saturn + twinkling stars
function holo:art/stop
execute unless entity @e[tag=projector_pixel,limit=1] run tellraw @a [{"text":"[ART] ","color":"red","bold":true},{"text":"Run /function helix_term:setup first.","color":"gray"}]
execute unless entity @e[tag=projector_pixel,limit=1] run return 0

scoreboard players set #ART_ID holo.state 1
scoreboard players set #ART_FRAME holo.frame 0

# Deep space gradient (3 horizontal bands, top darker)
execute as @e[tag=projector_pixel,scores={holo.row=0..23}] run data modify entity @s background set value -16120546
execute as @e[tag=projector_pixel,scores={holo.row=24..47}] run data modify entity @s background set value -15463886
execute as @e[tag=projector_pixel,scores={holo.row=48..71}] run data modify entity @s background set value -16120546

# Nebula cloud 1 (top-left, layered purple)
execute as @e[tag=projector_pixel,scores={holo.row=6..18,holo.col=8..30}] run data modify entity @s background set value -13495216
execute as @e[tag=projector_pixel,scores={holo.row=8..16,holo.col=12..26}] run data modify entity @s background set value -10868616
execute as @e[tag=projector_pixel,scores={holo.row=10..14,holo.col=15..23}] run data modify entity @s background set value -7586676

# Nebula cloud 2 (bottom-left, pink-purple)
execute as @e[tag=projector_pixel,scores={holo.row=48..62,holo.col=22..46}] run data modify entity @s background set value -13495216
execute as @e[tag=projector_pixel,scores={holo.row=50..60,holo.col=26..42}] run data modify entity @s background set value -10868616
execute as @e[tag=projector_pixel,scores={holo.row=53..58,holo.col=30..38}] run data modify entity @s background set value -7586676

# Saturn ring back (left segment, behind planet)
execute as @e[tag=projector_pixel,scores={holo.row=31,holo.col=64..82}] run data modify entity @s background set value -4944816
execute as @e[tag=projector_pixel,scores={holo.row=32,holo.col=62..82}] run data modify entity @s background set value -997236

# Saturn body
execute as @e[tag=projector_pixel,scores={holo.row=26..38,holo.col=84..100}] run data modify entity @s background set value -2315696
# Round corners (carve back to space)
execute as @e[tag=projector_pixel,scores={holo.row=26,holo.col=84..86}] run data modify entity @s background set value -15463886
execute as @e[tag=projector_pixel,scores={holo.row=26,holo.col=98..100}] run data modify entity @s background set value -15463886
execute as @e[tag=projector_pixel,scores={holo.row=27,holo.col=84..84}] run data modify entity @s background set value -15463886
execute as @e[tag=projector_pixel,scores={holo.row=27,holo.col=100..100}] run data modify entity @s background set value -15463886
execute as @e[tag=projector_pixel,scores={holo.row=37,holo.col=84..84}] run data modify entity @s background set value -15463886
execute as @e[tag=projector_pixel,scores={holo.row=37,holo.col=100..100}] run data modify entity @s background set value -15463886
execute as @e[tag=projector_pixel,scores={holo.row=38,holo.col=84..86}] run data modify entity @s background set value -15463886
execute as @e[tag=projector_pixel,scores={holo.row=38,holo.col=98..100}] run data modify entity @s background set value -15463886

# Saturn highlight (top-left lit area)
execute as @e[tag=projector_pixel,scores={holo.row=27..30,holo.col=86..91}] run data modify entity @s background set value -11646
execute as @e[tag=projector_pixel,scores={holo.row=28..29,holo.col=87..89}] run data modify entity @s background set value -11646
# Saturn shadow (bottom-right terminator)
execute as @e[tag=projector_pixel,scores={holo.row=35..37,holo.col=95..99}] run data modify entity @s background set value -8234456

# Saturn ring through the planet (front-of-equator strip)
execute as @e[tag=projector_pixel,scores={holo.row=32,holo.col=83..101}] run data modify entity @s background set value -997236
execute as @e[tag=projector_pixel,scores={holo.row=33,holo.col=85..99}] run data modify entity @s background set value -4944816

# Saturn ring front (right segment, in front of planet)
execute as @e[tag=projector_pixel,scores={holo.row=33,holo.col=98..118}] run data modify entity @s background set value -997236
execute as @e[tag=projector_pixel,scores={holo.row=34,holo.col=100..120}] run data modify entity @s background set value -4944816

# Static dim background stars (do not twinkle)
data modify entity @e[tag=pixel_r3_c50,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r5_c105,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r12_c70,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r25_c55,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r38_c8,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r54_c48,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r67_c22,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r68_c95,limit=1] background set value -10855816

# Begin twinkle loop
function holo:art/galaxy/tick
tellraw @a [{"text":"[ART] ","color":"light_purple","bold":true},{"text":"Galaxy","color":"aqua"},{"text":" projecting. Stop with ","color":"gray"},{"text":"/function holo:art/stop","color":"yellow"}]
