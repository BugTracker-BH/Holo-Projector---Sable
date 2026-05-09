# holo:art/ocean_sunset/tick — sunset gradient sky + sun + animated water shimmer
execute unless score #ART_ID holo.state matches 4 run return 0
scoreboard players add #ART_FRAME holo.frame 1

# === SKY (5 gradient bands top to horizon) ===
execute as @e[tag=projector_pixel,scores={holo.row=0..7}] run data modify entity @s background set value -1022896
execute as @e[tag=projector_pixel,scores={holo.row=8..15}] run data modify entity @s background set value -27036
execute as @e[tag=projector_pixel,scores={holo.row=16..23}] run data modify entity @s background set value -27036
execute as @e[tag=projector_pixel,scores={holo.row=24..30}] run data modify entity @s background set value -14196
execute as @e[tag=projector_pixel,scores={holo.row=31..38}] run data modify entity @s background set value -19356

# === SUN GLOW (large soft halo) ===
execute as @e[tag=projector_pixel,scores={holo.row=22..40,holo.col=52..76}] run data modify entity @s background set value -9096

# === SUN BODY ===
execute as @e[tag=projector_pixel,scores={holo.row=26..38,holo.col=56..72}] run data modify entity @s background set value -1356
execute as @e[tag=projector_pixel,scores={holo.row=24..25,holo.col=60..68}] run data modify entity @s background set value -1356
execute as @e[tag=projector_pixel,scores={holo.row=39..40,holo.col=60..68}] run data modify entity @s background set value -1356
# Carve corners back to glow
execute as @e[tag=projector_pixel,scores={holo.row=26,holo.col=56..58}] run data modify entity @s background set value -9096
execute as @e[tag=projector_pixel,scores={holo.row=26,holo.col=70..72}] run data modify entity @s background set value -9096
execute as @e[tag=projector_pixel,scores={holo.row=38,holo.col=56..58}] run data modify entity @s background set value -9096
execute as @e[tag=projector_pixel,scores={holo.row=38,holo.col=70..72}] run data modify entity @s background set value -9096

# === WATER (gradient bottom) ===
execute as @e[tag=projector_pixel,scores={holo.row=39..47}] run data modify entity @s background set value -12821866
execute as @e[tag=projector_pixel,scores={holo.row=48..58}] run data modify entity @s background set value -14798226
execute as @e[tag=projector_pixel,scores={holo.row=59..71}] run data modify entity @s background set value -15787706

# === HORIZON LINE (golden) ===
execute as @e[tag=projector_pixel,scores={holo.row=39,holo.col=0..127}] run data modify entity @s background set value -19356

# === SUN REFLECTION ON WATER (vertical fading stripe) ===
execute as @e[tag=projector_pixel,scores={holo.row=40..43,holo.col=60..68}] run data modify entity @s background set value -19356
execute as @e[tag=projector_pixel,scores={holo.row=44..48,holo.col=61..67}] run data modify entity @s background set value -27036
execute as @e[tag=projector_pixel,scores={holo.row=49..55,holo.col=62..66}] run data modify entity @s background set value -27036
execute as @e[tag=projector_pixel,scores={holo.row=56..62,holo.col=63..65}] run data modify entity @s background set value -27036
execute as @e[tag=projector_pixel,scores={holo.row=63..68,holo.col=64}] run data modify entity @s background set value -27036

# === ANIMATED WATER SHIMMER (4-phase pattern, frame mod 4) ===
scoreboard players set #FOUR_C holo.v 4
scoreboard players operation #SHM holo.tmp = #ART_FRAME holo.frame
scoreboard players operation #SHM holo.tmp %= #FOUR_C holo.v

execute if score #SHM holo.tmp matches 0 run data modify entity @e[tag=pixel_r45_c20,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 0 run data modify entity @e[tag=pixel_r51_c95,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 0 run data modify entity @e[tag=pixel_r58_c40,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 0 run data modify entity @e[tag=pixel_r65_c108,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 0 run data modify entity @e[tag=pixel_r48_c12,limit=1] background set value -19356

execute if score #SHM holo.tmp matches 1 run data modify entity @e[tag=pixel_r46_c30,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 1 run data modify entity @e[tag=pixel_r52_c105,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 1 run data modify entity @e[tag=pixel_r57_c50,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 1 run data modify entity @e[tag=pixel_r66_c116,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 1 run data modify entity @e[tag=pixel_r49_c22,limit=1] background set value -19356

execute if score #SHM holo.tmp matches 2 run data modify entity @e[tag=pixel_r48_c45,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 2 run data modify entity @e[tag=pixel_r54_c110,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 2 run data modify entity @e[tag=pixel_r56_c20,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 2 run data modify entity @e[tag=pixel_r62_c80,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 2 run data modify entity @e[tag=pixel_r45_c100,limit=1] background set value -19356

execute if score #SHM holo.tmp matches 3 run data modify entity @e[tag=pixel_r47_c15,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 3 run data modify entity @e[tag=pixel_r53_c100,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 3 run data modify entity @e[tag=pixel_r60_c30,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 3 run data modify entity @e[tag=pixel_r68_c90,limit=1] background set value -19356
execute if score #SHM holo.tmp matches 3 run data modify entity @e[tag=pixel_r50_c52,limit=1] background set value -19356

schedule function holo:art/ocean_sunset/tick 3t
