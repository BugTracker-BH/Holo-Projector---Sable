# holo:hack/intro_glitch — black bg with random red horizontal scan lines
execute as @e[tag=projector_pixel] run data modify entity @s background set value -16777216
# Random scan lines
execute store result score #GL holo.tmp run random value 5..15
execute as @e[tag=projector_pixel,scores={holo.row=8}] run data modify entity @s background set value -65536
execute store result score #GL2 holo.tmp run random value 0..71
execute as @e[tag=projector_pixel] if score @s holo.row = #GL2 holo.tmp run data modify entity @s background set value -4970486
execute store result score #GL3 holo.tmp run random value 0..71
execute as @e[tag=projector_pixel] if score @s holo.row = #GL3 holo.tmp run data modify entity @s background set value -4970486
playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~ 1.0 1.5
