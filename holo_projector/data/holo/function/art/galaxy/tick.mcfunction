# holo:art/galaxy/tick — Twinkle 16 stars at fixed coords
execute unless score #ART_ID holo.state matches 1 run return 0
scoreboard players add #ART_FRAME holo.frame 1

# Each star: brightness 0..2 (dim / med / bright)
execute store result score #G0 holo.tmp run random value 0..2
execute if score #G0 holo.tmp matches 0 run data modify entity @e[tag=pixel_r2_c15,limit=1] background set value -10855816
execute if score #G0 holo.tmp matches 1 run data modify entity @e[tag=pixel_r2_c15,limit=1] background set value -4934446
execute if score #G0 holo.tmp matches 2 run data modify entity @e[tag=pixel_r2_c15,limit=1] background set value -16

execute store result score #G1 holo.tmp run random value 0..2
execute if score #G1 holo.tmp matches 0 run data modify entity @e[tag=pixel_r4_c42,limit=1] background set value -10855816
execute if score #G1 holo.tmp matches 1 run data modify entity @e[tag=pixel_r4_c42,limit=1] background set value -4934446
execute if score #G1 holo.tmp matches 2 run data modify entity @e[tag=pixel_r4_c42,limit=1] background set value -16

execute store result score #G2 holo.tmp run random value 0..2
execute if score #G2 holo.tmp matches 0 run data modify entity @e[tag=pixel_r6_c85,limit=1] background set value -10855816
execute if score #G2 holo.tmp matches 1 run data modify entity @e[tag=pixel_r6_c85,limit=1] background set value -4934446
execute if score #G2 holo.tmp matches 2 run data modify entity @e[tag=pixel_r6_c85,limit=1] background set value -16

execute store result score #G3 holo.tmp run random value 0..2
execute if score #G3 holo.tmp matches 0 run data modify entity @e[tag=pixel_r7_c120,limit=1] background set value -10855816
execute if score #G3 holo.tmp matches 1 run data modify entity @e[tag=pixel_r7_c120,limit=1] background set value -4934446
execute if score #G3 holo.tmp matches 2 run data modify entity @e[tag=pixel_r7_c120,limit=1] background set value -16

execute store result score #G4 holo.tmp run random value 0..2
execute if score #G4 holo.tmp matches 0 run data modify entity @e[tag=pixel_r9_c58,limit=1] background set value -10855816
execute if score #G4 holo.tmp matches 1 run data modify entity @e[tag=pixel_r9_c58,limit=1] background set value -4934446
execute if score #G4 holo.tmp matches 2 run data modify entity @e[tag=pixel_r9_c58,limit=1] background set value -16

execute store result score #G5 holo.tmp run random value 0..2
execute if score #G5 holo.tmp matches 0 run data modify entity @e[tag=pixel_r11_c110,limit=1] background set value -10855816
execute if score #G5 holo.tmp matches 1 run data modify entity @e[tag=pixel_r11_c110,limit=1] background set value -4934446
execute if score #G5 holo.tmp matches 2 run data modify entity @e[tag=pixel_r11_c110,limit=1] background set value -16

execute store result score #G6 holo.tmp run random value 0..2
execute if score #G6 holo.tmp matches 0 run data modify entity @e[tag=pixel_r14_c40,limit=1] background set value -10855816
execute if score #G6 holo.tmp matches 1 run data modify entity @e[tag=pixel_r14_c40,limit=1] background set value -4934446
execute if score #G6 holo.tmp matches 2 run data modify entity @e[tag=pixel_r14_c40,limit=1] background set value -16

execute store result score #G7 holo.tmp run random value 0..2
execute if score #G7 holo.tmp matches 0 run data modify entity @e[tag=pixel_r18_c75,limit=1] background set value -10855816
execute if score #G7 holo.tmp matches 1 run data modify entity @e[tag=pixel_r18_c75,limit=1] background set value -4934446
execute if score #G7 holo.tmp matches 2 run data modify entity @e[tag=pixel_r18_c75,limit=1] background set value -16

execute store result score #G8 holo.tmp run random value 0..2
execute if score #G8 holo.tmp matches 0 run data modify entity @e[tag=pixel_r22_c115,limit=1] background set value -10855816
execute if score #G8 holo.tmp matches 1 run data modify entity @e[tag=pixel_r22_c115,limit=1] background set value -4934446
execute if score #G8 holo.tmp matches 2 run data modify entity @e[tag=pixel_r22_c115,limit=1] background set value -16

execute store result score #G9 holo.tmp run random value 0..2
execute if score #G9 holo.tmp matches 0 run data modify entity @e[tag=pixel_r42_c12,limit=1] background set value -10855816
execute if score #G9 holo.tmp matches 1 run data modify entity @e[tag=pixel_r42_c12,limit=1] background set value -4934446
execute if score #G9 holo.tmp matches 2 run data modify entity @e[tag=pixel_r42_c12,limit=1] background set value -16

execute store result score #GA holo.tmp run random value 0..2
execute if score #GA holo.tmp matches 0 run data modify entity @e[tag=pixel_r45_c88,limit=1] background set value -10855816
execute if score #GA holo.tmp matches 1 run data modify entity @e[tag=pixel_r45_c88,limit=1] background set value -4934446
execute if score #GA holo.tmp matches 2 run data modify entity @e[tag=pixel_r45_c88,limit=1] background set value -16

execute store result score #GB holo.tmp run random value 0..2
execute if score #GB holo.tmp matches 0 run data modify entity @e[tag=pixel_r48_c70,limit=1] background set value -10855816
execute if score #GB holo.tmp matches 1 run data modify entity @e[tag=pixel_r48_c70,limit=1] background set value -4934446
execute if score #GB holo.tmp matches 2 run data modify entity @e[tag=pixel_r48_c70,limit=1] background set value -16

execute store result score #GC holo.tmp run random value 0..2
execute if score #GC holo.tmp matches 0 run data modify entity @e[tag=pixel_r55_c15,limit=1] background set value -10855816
execute if score #GC holo.tmp matches 1 run data modify entity @e[tag=pixel_r55_c15,limit=1] background set value -4934446
execute if score #GC holo.tmp matches 2 run data modify entity @e[tag=pixel_r55_c15,limit=1] background set value -16

execute store result score #GD holo.tmp run random value 0..2
execute if score #GD holo.tmp matches 0 run data modify entity @e[tag=pixel_r58_c110,limit=1] background set value -10855816
execute if score #GD holo.tmp matches 1 run data modify entity @e[tag=pixel_r58_c110,limit=1] background set value -4934446
execute if score #GD holo.tmp matches 2 run data modify entity @e[tag=pixel_r58_c110,limit=1] background set value -16

execute store result score #GE holo.tmp run random value 0..2
execute if score #GE holo.tmp matches 0 run data modify entity @e[tag=pixel_r64_c58,limit=1] background set value -10855816
execute if score #GE holo.tmp matches 1 run data modify entity @e[tag=pixel_r64_c58,limit=1] background set value -4934446
execute if score #GE holo.tmp matches 2 run data modify entity @e[tag=pixel_r64_c58,limit=1] background set value -16

execute store result score #GF holo.tmp run random value 0..2
execute if score #GF holo.tmp matches 0 run data modify entity @e[tag=pixel_r70_c80,limit=1] background set value -10855816
execute if score #GF holo.tmp matches 1 run data modify entity @e[tag=pixel_r70_c80,limit=1] background set value -4934446
execute if score #GF holo.tmp matches 2 run data modify entity @e[tag=pixel_r70_c80,limit=1] background set value -16

schedule function holo:art/galaxy/tick 4t
