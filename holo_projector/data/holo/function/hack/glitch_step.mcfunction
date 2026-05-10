# holo:hack/glitch_step — single frame of glitchy chaos; recursive via schedule
scoreboard players add helix hack_glitch_t 1
execute if score helix hack_glitch_t matches 30.. run function holo:hack/lockout
execute if score helix hack_glitch_t matches 30.. run return 0

# Random color smear: flip rows red/black at random
execute as @e[tag=projector_pixel] run data modify entity @s background set value -16777216
execute store result score #G1 holo.tmp run random value 0..71
execute as @e[tag=projector_pixel] if score @s holo.row = #G1 holo.tmp run data modify entity @s background set value -65536
execute store result score #G2 holo.tmp run random value 0..71
execute as @e[tag=projector_pixel] if score @s holo.row = #G2 holo.tmp run data modify entity @s background set value -65536
execute store result score #G3 holo.tmp run random value 0..71
execute as @e[tag=projector_pixel] if score @s holo.row = #G3 holo.tmp run data modify entity @s background set value -4970486
execute store result score #G4 holo.tmp run random value 0..127
execute as @e[tag=projector_pixel] if score @s holo.col = #G4 holo.tmp run data modify entity @s background set value -65536
execute store result score #G5 holo.tmp run random value 0..127
execute as @e[tag=projector_pixel] if score @s holo.col = #G5 holo.tmp run data modify entity @s background set value -8388608

# Random sound burst
execute store result score #GS holo.tmp run random value 0..3
execute if score #GS holo.tmp matches 0 run playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~ 0.7 0.4
execute if score #GS holo.tmp matches 1 run playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 0.6 1.8
execute if score #GS holo.tmp matches 2 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 0.8 0.2

schedule function holo:hack/glitch_step 2t
