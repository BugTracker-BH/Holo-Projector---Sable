# holo:art/city_skyline/tick — randomly toggle 16 building windows (off/dim/lit)
execute unless score #ART_ID holo.state matches 6 run return 0
scoreboard players add #ART_FRAME holo.frame 1

# Each window: 0=off, 1=dim amber, 2=bright yellow

execute store result score #W0 holo.tmp run random value 0..2
execute if score #W0 holo.tmp matches 0 run execute as @e[tag=projector_pixel,scores={holo.row=46,holo.col=4..6}] run data modify entity @s background set value -15987692
execute if score #W0 holo.tmp matches 1 run execute as @e[tag=projector_pixel,scores={holo.row=46,holo.col=4..6}] run data modify entity @s background set value -4944836
execute if score #W0 holo.tmp matches 2 run execute as @e[tag=projector_pixel,scores={holo.row=46,holo.col=4..6}] run data modify entity @s background set value -9116

execute store result score #W1 holo.tmp run random value 0..2
execute if score #W1 holo.tmp matches 0 run execute as @e[tag=projector_pixel,scores={holo.row=54,holo.col=8..10}] run data modify entity @s background set value -15987692
execute if score #W1 holo.tmp matches 1 run execute as @e[tag=projector_pixel,scores={holo.row=54,holo.col=8..10}] run data modify entity @s background set value -4944836
execute if score #W1 holo.tmp matches 2 run execute as @e[tag=projector_pixel,scores={holo.row=54,holo.col=8..10}] run data modify entity @s background set value -9116

execute store result score #W2 holo.tmp run random value 0..2
execute if score #W2 holo.tmp matches 0 run execute as @e[tag=projector_pixel,scores={holo.row=66,holo.col=4..6}] run data modify entity @s background set value -15987692
execute if score #W2 holo.tmp matches 1 run execute as @e[tag=projector_pixel,scores={holo.row=66,holo.col=4..6}] run data modify entity @s background set value -4944836
execute if score #W2 holo.tmp matches 2 run execute as @e[tag=projector_pixel,scores={holo.row=66,holo.col=4..6}] run data modify entity @s background set value -9116

execute store result score #W3 holo.tmp run random value 0..2
execute if score #W3 holo.tmp matches 0 run execute as @e[tag=projector_pixel,scores={holo.row=58,holo.col=18..20}] run data modify entity @s background set value -15987692
execute if score #W3 holo.tmp matches 1 run execute as @e[tag=projector_pixel,scores={holo.row=58,holo.col=18..20}] run data modify entity @s background set value -4944836
execute if score #W3 holo.tmp matches 2 run execute as @e[tag=projector_pixel,scores={holo.row=58,holo.col=18..20}] run data modify entity @s background set value -9116

execute store result score #W4 holo.tmp run random value 0..2
execute if score #W4 holo.tmp matches 0 run execute as @e[tag=projector_pixel,scores={holo.row=42,holo.col=29..31}] run data modify entity @s background set value -15987692
execute if score #W4 holo.tmp matches 1 run execute as @e[tag=projector_pixel,scores={holo.row=42,holo.col=29..31}] run data modify entity @s background set value -4944836
execute if score #W4 holo.tmp matches 2 run execute as @e[tag=projector_pixel,scores={holo.row=42,holo.col=29..31}] run data modify entity @s background set value -9116

execute store result score #W5 holo.tmp run random value 0..2
execute if score #W5 holo.tmp matches 0 run execute as @e[tag=projector_pixel,scores={holo.row=50,holo.col=33..35}] run data modify entity @s background set value -15987692
execute if score #W5 holo.tmp matches 1 run execute as @e[tag=projector_pixel,scores={holo.row=50,holo.col=33..35}] run data modify entity @s background set value -4944836
execute if score #W5 holo.tmp matches 2 run execute as @e[tag=projector_pixel,scores={holo.row=50,holo.col=33..35}] run data modify entity @s background set value -9116

execute store result score #W6 holo.tmp run random value 0..2
execute if score #W6 holo.tmp matches 0 run execute as @e[tag=projector_pixel,scores={holo.row=58,holo.col=29..31}] run data modify entity @s background set value -15987692
execute if score #W6 holo.tmp matches 1 run execute as @e[tag=projector_pixel,scores={holo.row=58,holo.col=29..31}] run data modify entity @s background set value -4944836
execute if score #W6 holo.tmp matches 2 run execute as @e[tag=projector_pixel,scores={holo.row=58,holo.col=29..31}] run data modify entity @s background set value -9116

execute store result score #W7 holo.tmp run random value 0..2
execute if score #W7 holo.tmp matches 0 run execute as @e[tag=projector_pixel,scores={holo.row=66,holo.col=33..35}] run data modify entity @s background set value -15987692
execute if score #W7 holo.tmp matches 1 run execute as @e[tag=projector_pixel,scores={holo.row=66,holo.col=33..35}] run data modify entity @s background set value -4944836
execute if score #W7 holo.tmp matches 2 run execute as @e[tag=projector_pixel,scores={holo.row=66,holo.col=33..35}] run data modify entity @s background set value -9116

execute store result score #W8 holo.tmp run random value 0..2
execute if score #W8 holo.tmp matches 0 run execute as @e[tag=projector_pixel,scores={holo.row=58,holo.col=46..48}] run data modify entity @s background set value -15987692
execute if score #W8 holo.tmp matches 1 run execute as @e[tag=projector_pixel,scores={holo.row=58,holo.col=46..48}] run data modify entity @s background set value -4944836
execute if score #W8 holo.tmp matches 2 run execute as @e[tag=projector_pixel,scores={holo.row=58,holo.col=46..48}] run data modify entity @s background set value -9116

execute store result score #W9 holo.tmp run random value 0..2
execute if score #W9 holo.tmp matches 0 run execute as @e[tag=projector_pixel,scores={holo.row=50,holo.col=60..62}] run data modify entity @s background set value -15987692
execute if score #W9 holo.tmp matches 1 run execute as @e[tag=projector_pixel,scores={holo.row=50,holo.col=60..62}] run data modify entity @s background set value -4944836
execute if score #W9 holo.tmp matches 2 run execute as @e[tag=projector_pixel,scores={holo.row=50,holo.col=60..62}] run data modify entity @s background set value -9116

execute store result score #WA holo.tmp run random value 0..2
execute if score #WA holo.tmp matches 0 run execute as @e[tag=projector_pixel,scores={holo.row=58,holo.col=64..66}] run data modify entity @s background set value -15987692
execute if score #WA holo.tmp matches 1 run execute as @e[tag=projector_pixel,scores={holo.row=58,holo.col=64..66}] run data modify entity @s background set value -4944836
execute if score #WA holo.tmp matches 2 run execute as @e[tag=projector_pixel,scores={holo.row=58,holo.col=64..66}] run data modify entity @s background set value -9116

execute store result score #WB holo.tmp run random value 0..2
execute if score #WB holo.tmp matches 0 run execute as @e[tag=projector_pixel,scores={holo.row=66,holo.col=60..62}] run data modify entity @s background set value -15987692
execute if score #WB holo.tmp matches 1 run execute as @e[tag=projector_pixel,scores={holo.row=66,holo.col=60..62}] run data modify entity @s background set value -4944836
execute if score #WB holo.tmp matches 2 run execute as @e[tag=projector_pixel,scores={holo.row=66,holo.col=60..62}] run data modify entity @s background set value -9116

execute store result score #WC holo.tmp run random value 0..2
execute if score #WC holo.tmp matches 0 run execute as @e[tag=projector_pixel,scores={holo.row=44,holo.col=89..91}] run data modify entity @s background set value -15987692
execute if score #WC holo.tmp matches 1 run execute as @e[tag=projector_pixel,scores={holo.row=44,holo.col=89..91}] run data modify entity @s background set value -4944836
execute if score #WC holo.tmp matches 2 run execute as @e[tag=projector_pixel,scores={holo.row=44,holo.col=89..91}] run data modify entity @s background set value -9116

execute store result score #WD holo.tmp run random value 0..2
execute if score #WD holo.tmp matches 0 run execute as @e[tag=projector_pixel,scores={holo.row=52,holo.col=93..95}] run data modify entity @s background set value -15987692
execute if score #WD holo.tmp matches 1 run execute as @e[tag=projector_pixel,scores={holo.row=52,holo.col=93..95}] run data modify entity @s background set value -4944836
execute if score #WD holo.tmp matches 2 run execute as @e[tag=projector_pixel,scores={holo.row=52,holo.col=93..95}] run data modify entity @s background set value -9116

execute store result score #WE holo.tmp run random value 0..2
execute if score #WE holo.tmp matches 0 run execute as @e[tag=projector_pixel,scores={holo.row=60,holo.col=89..91}] run data modify entity @s background set value -15987692
execute if score #WE holo.tmp matches 1 run execute as @e[tag=projector_pixel,scores={holo.row=60,holo.col=89..91}] run data modify entity @s background set value -4944836
execute if score #WE holo.tmp matches 2 run execute as @e[tag=projector_pixel,scores={holo.row=60,holo.col=89..91}] run data modify entity @s background set value -9116

execute store result score #WF holo.tmp run random value 0..2
execute if score #WF holo.tmp matches 0 run execute as @e[tag=projector_pixel,scores={holo.row=58,holo.col=119..121}] run data modify entity @s background set value -15987692
execute if score #WF holo.tmp matches 1 run execute as @e[tag=projector_pixel,scores={holo.row=58,holo.col=119..121}] run data modify entity @s background set value -4944836
execute if score #WF holo.tmp matches 2 run execute as @e[tag=projector_pixel,scores={holo.row=58,holo.col=119..121}] run data modify entity @s background set value -9116

schedule function holo:art/city_skyline/tick 6t
