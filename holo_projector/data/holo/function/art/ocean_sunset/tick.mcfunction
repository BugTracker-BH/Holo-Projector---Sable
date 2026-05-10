# holo:art/ocean_sunset/tick — sunset gradient sky + soft sun + horizontal-band reflection
execute unless score #ART_ID holo.state matches 4 run return 0
scoreboard players add #ART_FRAME holo.frame 1

# === SKY (5 gradient bands top to horizon) ===
execute as @e[tag=projector_pixel,scores={holo.row=0..7}] run data modify entity @s background set value -1022896
execute as @e[tag=projector_pixel,scores={holo.row=8..15}] run data modify entity @s background set value -27036
execute as @e[tag=projector_pixel,scores={holo.row=16..23}] run data modify entity @s background set value -27036
execute as @e[tag=projector_pixel,scores={holo.row=24..30}] run data modify entity @s background set value -14196
execute as @e[tag=projector_pixel,scores={holo.row=31..38}] run data modify entity @s background set value -19356

# === THIN HIGH CLOUDS (soft pink streaks) ===
execute as @e[tag=projector_pixel,scores={holo.row=10..11,holo.col=8..30}] run data modify entity @s background set value -14196
execute as @e[tag=projector_pixel,scores={holo.row=14..15,holo.col=85..118}] run data modify entity @s background set value -14196
execute as @e[tag=projector_pixel,scores={holo.row=20..21,holo.col=18..40}] run data modify entity @s background set value -1022896

# === SUN GLOW ===
execute as @e[tag=projector_pixel,scores={holo.row=22..40,holo.col=52..76}] run data modify entity @s background set value -9096

# === SUN BODY (rounded) ===
execute as @e[tag=projector_pixel,scores={holo.row=26..38,holo.col=56..72}] run data modify entity @s background set value -1356
execute as @e[tag=projector_pixel,scores={holo.row=24..25,holo.col=60..68}] run data modify entity @s background set value -1356
execute as @e[tag=projector_pixel,scores={holo.row=39..40,holo.col=60..68}] run data modify entity @s background set value -1356
execute as @e[tag=projector_pixel,scores={holo.row=26,holo.col=56..58}] run data modify entity @s background set value -9096
execute as @e[tag=projector_pixel,scores={holo.row=26,holo.col=70..72}] run data modify entity @s background set value -9096
execute as @e[tag=projector_pixel,scores={holo.row=38,holo.col=56..58}] run data modify entity @s background set value -9096
execute as @e[tag=projector_pixel,scores={holo.row=38,holo.col=70..72}] run data modify entity @s background set value -9096

# === WATER (gradient bottom) ===
execute as @e[tag=projector_pixel,scores={holo.row=39..47}] run data modify entity @s background set value -12821866
execute as @e[tag=projector_pixel,scores={holo.row=48..58}] run data modify entity @s background set value -14798226
execute as @e[tag=projector_pixel,scores={holo.row=59..71}] run data modify entity @s background set value -15787706

# === HORIZON LINE ===
execute as @e[tag=projector_pixel,scores={holo.row=39,holo.col=0..127}] run data modify entity @s background set value -19356

# === SUN REFLECTION — HORIZONTAL BANDS WITH GAPS (no harsh vertical beam) ===
# Wide, brightest band right under horizon, getting thinner / dimmer / more broken toward viewer
execute as @e[tag=projector_pixel,scores={holo.row=40,holo.col=44..84}] run data modify entity @s background set value -19356
execute as @e[tag=projector_pixel,scores={holo.row=41,holo.col=48..80}] run data modify entity @s background set value -19356
# Gap row 42 (water shows through)
execute as @e[tag=projector_pixel,scores={holo.row=43,holo.col=52..76}] run data modify entity @s background set value -27036
execute as @e[tag=projector_pixel,scores={holo.row=44,holo.col=54..74}] run data modify entity @s background set value -27036
# Gap row 45
execute as @e[tag=projector_pixel,scores={holo.row=46,holo.col=56..72}] run data modify entity @s background set value -27036
# Gap rows 47
execute as @e[tag=projector_pixel,scores={holo.row=48,holo.col=58..70}] run data modify entity @s background set value -27036
# Gap row 49
execute as @e[tag=projector_pixel,scores={holo.row=50,holo.col=58..62}] run data modify entity @s background set value -27036
execute as @e[tag=projector_pixel,scores={holo.row=50,holo.col=66..70}] run data modify entity @s background set value -27036
# Gap row 51
execute as @e[tag=projector_pixel,scores={holo.row=52,holo.col=60..62}] run data modify entity @s background set value -27036
execute as @e[tag=projector_pixel,scores={holo.row=52,holo.col=66..68}] run data modify entity @s background set value -27036
# Gap row 53-54
execute as @e[tag=projector_pixel,scores={holo.row=55,holo.col=61..63}] run data modify entity @s background set value -27036
execute as @e[tag=projector_pixel,scores={holo.row=55,holo.col=66..68}] run data modify entity @s background set value -27036
# Gap row 56-57
execute as @e[tag=projector_pixel,scores={holo.row=58,holo.col=62..63}] run data modify entity @s background set value -27036
execute as @e[tag=projector_pixel,scores={holo.row=58,holo.col=66..67}] run data modify entity @s background set value -27036
# Far/sparse near foreground
execute as @e[tag=projector_pixel,scores={holo.row=62,holo.col=63..64}] run data modify entity @s background set value -27036
execute as @e[tag=projector_pixel,scores={holo.row=66,holo.col=63..64}] run data modify entity @s background set value -27036

# === ANIMATED WATER SHIMMER (4-phase, scattered) ===
scoreboard players set #FOUR_C holo.v 4
scoreboard players operation #SHM holo.tmp = #ART_FRAME holo.frame
scoreboard players operation #SHM holo.tmp %= #FOUR_C holo.v

execute if score #SHM holo.tmp matches 0 run data modify entity @e[tag=pixel_r45_c20,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 0 run data modify entity @e[tag=pixel_r51_c95,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 0 run data modify entity @e[tag=pixel_r60_c40,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 0 run data modify entity @e[tag=pixel_r65_c108,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 0 run data modify entity @e[tag=pixel_r48_c12,limit=1] background set value -19356

execute if score #SHM holo.tmp matches 1 run data modify entity @e[tag=pixel_r46_c30,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 1 run data modify entity @e[tag=pixel_r54_c105,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 1 run data modify entity @e[tag=pixel_r57_c50,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 1 run data modify entity @e[tag=pixel_r66_c116,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 1 run data modify entity @e[tag=pixel_r49_c22,limit=1] background set value -19356

execute if score #SHM holo.tmp matches 2 run data modify entity @e[tag=pixel_r48_c45,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 2 run data modify entity @e[tag=pixel_r56_c110,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 2 run data modify entity @e[tag=pixel_r56_c20,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 2 run data modify entity @e[tag=pixel_r62_c84,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 2 run data modify entity @e[tag=pixel_r45_c100,limit=1] background set value -19356

execute if score #SHM holo.tmp matches 3 run data modify entity @e[tag=pixel_r47_c15,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 3 run data modify entity @e[tag=pixel_r53_c100,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 3 run data modify entity @e[tag=pixel_r60_c30,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 3 run data modify entity @e[tag=pixel_r68_c92,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 3 run data modify entity @e[tag=pixel_r50_c52,limit=1] background set value -19356

schedule function holo:art/ocean_sunset/tick 3t
