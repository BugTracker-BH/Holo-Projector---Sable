# holo:art/galaxy/start — Cosmic galaxy with Saturn, spread nebula, big sparkle stars
function holo:art/stop
execute unless entity @e[tag=projector_pixel,limit=1] run tellraw @a [{"text":"[ART] ","color":"red","bold":true},{"text":"Run /function helix_term:setup first.","color":"gray"}]
execute unless entity @e[tag=projector_pixel,limit=1] run return 0

scoreboard players set #ART_ID holo.state 1
scoreboard players set #ART_FRAME holo.frame 0

# === DEEP SPACE GRADIENT (3 bands) ===
execute as @e[tag=projector_pixel,scores={holo.row=0..23}] run data modify entity @s background set value -16120546
execute as @e[tag=projector_pixel,scores={holo.row=24..47}] run data modify entity @s background set value -15463886
execute as @e[tag=projector_pixel,scores={holo.row=48..71}] run data modify entity @s background set value -16120546

# === SPREAD-OUT NEBULA (7 blobs covering the canvas, 3-color depth each) ===
execute as @e[tag=projector_pixel,scores={holo.row=0..18,holo.col=0..30}] run data modify entity @s background set value -13495216
execute as @e[tag=projector_pixel,scores={holo.row=2..16,holo.col=4..26}] run data modify entity @s background set value -10868616
execute as @e[tag=projector_pixel,scores={holo.row=4..14,holo.col=8..22}] run data modify entity @s background set value -7586676

execute as @e[tag=projector_pixel,scores={holo.row=0..14,holo.col=30..56}] run data modify entity @s background set value -13495216
execute as @e[tag=projector_pixel,scores={holo.row=2..12,holo.col=34..52}] run data modify entity @s background set value -10868616
execute as @e[tag=projector_pixel,scores={holo.row=4..10,holo.col=38..48}] run data modify entity @s background set value -7586676

execute as @e[tag=projector_pixel,scores={holo.row=0..16,holo.col=100..127}] run data modify entity @s background set value -13495216
execute as @e[tag=projector_pixel,scores={holo.row=2..14,holo.col=104..125}] run data modify entity @s background set value -10868616
execute as @e[tag=projector_pixel,scores={holo.row=4..12,holo.col=108..122}] run data modify entity @s background set value -7586676

execute as @e[tag=projector_pixel,scores={holo.row=20..48,holo.col=56..127}] run data modify entity @s background set value -13495216
execute as @e[tag=projector_pixel,scores={holo.row=22..46,holo.col=62..125}] run data modify entity @s background set value -10868616

execute as @e[tag=projector_pixel,scores={holo.row=48..68,holo.col=0..40}] run data modify entity @s background set value -13495216
execute as @e[tag=projector_pixel,scores={holo.row=52..66,holo.col=4..36}] run data modify entity @s background set value -10868616
execute as @e[tag=projector_pixel,scores={holo.row=54..64,holo.col=10..30}] run data modify entity @s background set value -7586676

execute as @e[tag=projector_pixel,scores={holo.row=48..64,holo.col=42..76}] run data modify entity @s background set value -13495216
execute as @e[tag=projector_pixel,scores={holo.row=50..62,holo.col=46..72}] run data modify entity @s background set value -10868616

execute as @e[tag=projector_pixel,scores={holo.row=50..70,holo.col=82..127}] run data modify entity @s background set value -13495216
execute as @e[tag=projector_pixel,scores={holo.row=54..68,holo.col=88..123}] run data modify entity @s background set value -10868616
execute as @e[tag=projector_pixel,scores={holo.row=56..66,holo.col=92..118}] run data modify entity @s background set value -7586676

# === SATURN (over nebula, leaving purple aura around it) ===
execute as @e[tag=projector_pixel,scores={holo.row=31,holo.col=64..82}] run data modify entity @s background set value -4944816
execute as @e[tag=projector_pixel,scores={holo.row=32,holo.col=62..82}] run data modify entity @s background set value -997236
execute as @e[tag=projector_pixel,scores={holo.row=26..38,holo.col=84..100}] run data modify entity @s background set value -2315696
execute as @e[tag=projector_pixel,scores={holo.row=26,holo.col=84..86}] run data modify entity @s background set value -10868616
execute as @e[tag=projector_pixel,scores={holo.row=26,holo.col=98..100}] run data modify entity @s background set value -10868616
execute as @e[tag=projector_pixel,scores={holo.row=27,holo.col=84}] run data modify entity @s background set value -10868616
execute as @e[tag=projector_pixel,scores={holo.row=27,holo.col=100}] run data modify entity @s background set value -10868616
execute as @e[tag=projector_pixel,scores={holo.row=37,holo.col=84}] run data modify entity @s background set value -10868616
execute as @e[tag=projector_pixel,scores={holo.row=37,holo.col=100}] run data modify entity @s background set value -10868616
execute as @e[tag=projector_pixel,scores={holo.row=38,holo.col=84..86}] run data modify entity @s background set value -10868616
execute as @e[tag=projector_pixel,scores={holo.row=38,holo.col=98..100}] run data modify entity @s background set value -10868616
execute as @e[tag=projector_pixel,scores={holo.row=27..30,holo.col=86..91}] run data modify entity @s background set value -11646
execute as @e[tag=projector_pixel,scores={holo.row=28..29,holo.col=87..89}] run data modify entity @s background set value -11646
execute as @e[tag=projector_pixel,scores={holo.row=35..37,holo.col=95..99}] run data modify entity @s background set value -8234456
execute as @e[tag=projector_pixel,scores={holo.row=32,holo.col=83..101}] run data modify entity @s background set value -997236
execute as @e[tag=projector_pixel,scores={holo.row=33,holo.col=85..99}] run data modify entity @s background set value -4944816
execute as @e[tag=projector_pixel,scores={holo.row=33,holo.col=98..118}] run data modify entity @s background set value -997236
execute as @e[tag=projector_pixel,scores={holo.row=34,holo.col=100..120}] run data modify entity @s background set value -4944816

# === STATIC DIM BACKGROUND DOTS ===
data modify entity @e[tag=pixel_r6_c66,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r17_c40,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r28_c4,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r36_c40,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r42_c52,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r60_c40,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r66_c80,limit=1] background set value -10855816
data modify entity @e[tag=pixel_r70_c124,limit=1] background set value -10855816

function holo:art/galaxy/tick
tellraw @a [{"text":"[ART] ","color":"light_purple","bold":true},{"text":"Galaxy","color":"aqua"},{"text":" projecting. Stop with ","color":"gray"},{"text":"/function holo:art/stop","color":"yellow"}]
