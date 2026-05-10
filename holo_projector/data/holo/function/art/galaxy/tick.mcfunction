# holo:art/galaxy/tick — 4 big sparkle-stars (5x5 plus-diamond, 3 phases each)
# + 8 individual dots + 3 binary pairs
execute unless score #ART_ID holo.state matches 1 run return 0
scoreboard players add #ART_FRAME holo.frame 1

# === BIG STAR 0 at (10, 72) ===
execute store result score #BS0 holo.tmp run random value 0..2
# outer ring (4 pixels)
execute if score #BS0 holo.tmp matches 0 run data modify entity @e[tag=pixel_r8_c72,limit=1] background set value -10855816
execute if score #BS0 holo.tmp matches 1 run data modify entity @e[tag=pixel_r8_c72,limit=1] background set value -10855816
execute if score #BS0 holo.tmp matches 2 run data modify entity @e[tag=pixel_r8_c72,limit=1] background set value -4934446
execute if score #BS0 holo.tmp matches 0 run data modify entity @e[tag=pixel_r10_c70,limit=1] background set value -10855816
execute if score #BS0 holo.tmp matches 1 run data modify entity @e[tag=pixel_r10_c70,limit=1] background set value -10855816
execute if score #BS0 holo.tmp matches 2 run data modify entity @e[tag=pixel_r10_c70,limit=1] background set value -4934446
execute if score #BS0 holo.tmp matches 0 run data modify entity @e[tag=pixel_r10_c74,limit=1] background set value -10855816
execute if score #BS0 holo.tmp matches 1 run data modify entity @e[tag=pixel_r10_c74,limit=1] background set value -10855816
execute if score #BS0 holo.tmp matches 2 run data modify entity @e[tag=pixel_r10_c74,limit=1] background set value -4934446
execute if score #BS0 holo.tmp matches 0 run data modify entity @e[tag=pixel_r12_c72,limit=1] background set value -10855816
execute if score #BS0 holo.tmp matches 1 run data modify entity @e[tag=pixel_r12_c72,limit=1] background set value -10855816
execute if score #BS0 holo.tmp matches 2 run data modify entity @e[tag=pixel_r12_c72,limit=1] background set value -4934446
# inner diamond (8 pixels)
execute if score #BS0 holo.tmp matches 0 run data modify entity @e[tag=pixel_r9_c71,limit=1] background set value -6908236
execute if score #BS0 holo.tmp matches 1 run data modify entity @e[tag=pixel_r9_c71,limit=1] background set value -4934446
execute if score #BS0 holo.tmp matches 2 run data modify entity @e[tag=pixel_r9_c71,limit=1] background set value -16
execute if score #BS0 holo.tmp matches 0 run data modify entity @e[tag=pixel_r9_c72,limit=1] background set value -6908236
execute if score #BS0 holo.tmp matches 1 run data modify entity @e[tag=pixel_r9_c72,limit=1] background set value -4934446
execute if score #BS0 holo.tmp matches 2 run data modify entity @e[tag=pixel_r9_c72,limit=1] background set value -16
execute if score #BS0 holo.tmp matches 0 run data modify entity @e[tag=pixel_r9_c73,limit=1] background set value -6908236
execute if score #BS0 holo.tmp matches 1 run data modify entity @e[tag=pixel_r9_c73,limit=1] background set value -4934446
execute if score #BS0 holo.tmp matches 2 run data modify entity @e[tag=pixel_r9_c73,limit=1] background set value -16
execute if score #BS0 holo.tmp matches 0 run data modify entity @e[tag=pixel_r10_c71,limit=1] background set value -6908236
execute if score #BS0 holo.tmp matches 1 run data modify entity @e[tag=pixel_r10_c71,limit=1] background set value -4934446
execute if score #BS0 holo.tmp matches 2 run data modify entity @e[tag=pixel_r10_c71,limit=1] background set value -16
execute if score #BS0 holo.tmp matches 0 run data modify entity @e[tag=pixel_r10_c73,limit=1] background set value -6908236
execute if score #BS0 holo.tmp matches 1 run data modify entity @e[tag=pixel_r10_c73,limit=1] background set value -4934446
execute if score #BS0 holo.tmp matches 2 run data modify entity @e[tag=pixel_r10_c73,limit=1] background set value -16
execute if score #BS0 holo.tmp matches 0 run data modify entity @e[tag=pixel_r11_c71,limit=1] background set value -6908236
execute if score #BS0 holo.tmp matches 1 run data modify entity @e[tag=pixel_r11_c71,limit=1] background set value -4934446
execute if score #BS0 holo.tmp matches 2 run data modify entity @e[tag=pixel_r11_c71,limit=1] background set value -16
execute if score #BS0 holo.tmp matches 0 run data modify entity @e[tag=pixel_r11_c72,limit=1] background set value -6908236
execute if score #BS0 holo.tmp matches 1 run data modify entity @e[tag=pixel_r11_c72,limit=1] background set value -4934446
execute if score #BS0 holo.tmp matches 2 run data modify entity @e[tag=pixel_r11_c72,limit=1] background set value -16
execute if score #BS0 holo.tmp matches 0 run data modify entity @e[tag=pixel_r11_c73,limit=1] background set value -6908236
execute if score #BS0 holo.tmp matches 1 run data modify entity @e[tag=pixel_r11_c73,limit=1] background set value -4934446
execute if score #BS0 holo.tmp matches 2 run data modify entity @e[tag=pixel_r11_c73,limit=1] background set value -16
# center
execute if score #BS0 holo.tmp matches 0 run data modify entity @e[tag=pixel_r10_c72,limit=1] background set value -4934446
execute if score #BS0 holo.tmp matches 1 run data modify entity @e[tag=pixel_r10_c72,limit=1] background set value -16
execute if score #BS0 holo.tmp matches 2 run data modify entity @e[tag=pixel_r10_c72,limit=1] background set value -16

# === BIG STAR 1 at (22, 18) ===
execute store result score #BS1 holo.tmp run random value 0..2
execute if score #BS1 holo.tmp matches 0 run data modify entity @e[tag=pixel_r20_c18,limit=1] background set value -10855816
execute if score #BS1 holo.tmp matches 1 run data modify entity @e[tag=pixel_r20_c18,limit=1] background set value -10855816
execute if score #BS1 holo.tmp matches 2 run data modify entity @e[tag=pixel_r20_c18,limit=1] background set value -4934446
execute if score #BS1 holo.tmp matches 0 run data modify entity @e[tag=pixel_r22_c16,limit=1] background set value -10855816
execute if score #BS1 holo.tmp matches 1 run data modify entity @e[tag=pixel_r22_c16,limit=1] background set value -10855816
execute if score #BS1 holo.tmp matches 2 run data modify entity @e[tag=pixel_r22_c16,limit=1] background set value -4934446
execute if score #BS1 holo.tmp matches 0 run data modify entity @e[tag=pixel_r22_c20,limit=1] background set value -10855816
execute if score #BS1 holo.tmp matches 1 run data modify entity @e[tag=pixel_r22_c20,limit=1] background set value -10855816
execute if score #BS1 holo.tmp matches 2 run data modify entity @e[tag=pixel_r22_c20,limit=1] background set value -4934446
execute if score #BS1 holo.tmp matches 0 run data modify entity @e[tag=pixel_r24_c18,limit=1] background set value -10855816
execute if score #BS1 holo.tmp matches 1 run data modify entity @e[tag=pixel_r24_c18,limit=1] background set value -10855816
execute if score #BS1 holo.tmp matches 2 run data modify entity @e[tag=pixel_r24_c18,limit=1] background set value -4934446
execute if score #BS1 holo.tmp matches 0 run data modify entity @e[tag=pixel_r21_c17,limit=1] background set value -6908236
execute if score #BS1 holo.tmp matches 1 run data modify entity @e[tag=pixel_r21_c17,limit=1] background set value -4934446
execute if score #BS1 holo.tmp matches 2 run data modify entity @e[tag=pixel_r21_c17,limit=1] background set value -16
execute if score #BS1 holo.tmp matches 0 run data modify entity @e[tag=pixel_r21_c18,limit=1] background set value -6908236
execute if score #BS1 holo.tmp matches 1 run data modify entity @e[tag=pixel_r21_c18,limit=1] background set value -4934446
execute if score #BS1 holo.tmp matches 2 run data modify entity @e[tag=pixel_r21_c18,limit=1] background set value -16
execute if score #BS1 holo.tmp matches 0 run data modify entity @e[tag=pixel_r21_c19,limit=1] background set value -6908236
execute if score #BS1 holo.tmp matches 1 run data modify entity @e[tag=pixel_r21_c19,limit=1] background set value -4934446
execute if score #BS1 holo.tmp matches 2 run data modify entity @e[tag=pixel_r21_c19,limit=1] background set value -16
execute if score #BS1 holo.tmp matches 0 run data modify entity @e[tag=pixel_r22_c17,limit=1] background set value -6908236
execute if score #BS1 holo.tmp matches 1 run data modify entity @e[tag=pixel_r22_c17,limit=1] background set value -4934446
execute if score #BS1 holo.tmp matches 2 run data modify entity @e[tag=pixel_r22_c17,limit=1] background set value -16
execute if score #BS1 holo.tmp matches 0 run data modify entity @e[tag=pixel_r22_c19,limit=1] background set value -6908236
execute if score #BS1 holo.tmp matches 1 run data modify entity @e[tag=pixel_r22_c19,limit=1] background set value -4934446
execute if score #BS1 holo.tmp matches 2 run data modify entity @e[tag=pixel_r22_c19,limit=1] background set value -16
execute if score #BS1 holo.tmp matches 0 run data modify entity @e[tag=pixel_r23_c17,limit=1] background set value -6908236
execute if score #BS1 holo.tmp matches 1 run data modify entity @e[tag=pixel_r23_c17,limit=1] background set value -4934446
execute if score #BS1 holo.tmp matches 2 run data modify entity @e[tag=pixel_r23_c17,limit=1] background set value -16
execute if score #BS1 holo.tmp matches 0 run data modify entity @e[tag=pixel_r23_c18,limit=1] background set value -6908236
execute if score #BS1 holo.tmp matches 1 run data modify entity @e[tag=pixel_r23_c18,limit=1] background set value -4934446
execute if score #BS1 holo.tmp matches 2 run data modify entity @e[tag=pixel_r23_c18,limit=1] background set value -16
execute if score #BS1 holo.tmp matches 0 run data modify entity @e[tag=pixel_r23_c19,limit=1] background set value -6908236
execute if score #BS1 holo.tmp matches 1 run data modify entity @e[tag=pixel_r23_c19,limit=1] background set value -4934446
execute if score #BS1 holo.tmp matches 2 run data modify entity @e[tag=pixel_r23_c19,limit=1] background set value -16
execute if score #BS1 holo.tmp matches 0 run data modify entity @e[tag=pixel_r22_c18,limit=1] background set value -4934446
execute if score #BS1 holo.tmp matches 1 run data modify entity @e[tag=pixel_r22_c18,limit=1] background set value -16
execute if score #BS1 holo.tmp matches 2 run data modify entity @e[tag=pixel_r22_c18,limit=1] background set value -16

# === BIG STAR 2 at (50, 24) ===
execute store result score #BS2 holo.tmp run random value 0..2
execute if score #BS2 holo.tmp matches 0 run data modify entity @e[tag=pixel_r48_c24,limit=1] background set value -10855816
execute if score #BS2 holo.tmp matches 1 run data modify entity @e[tag=pixel_r48_c24,limit=1] background set value -10855816
execute if score #BS2 holo.tmp matches 2 run data modify entity @e[tag=pixel_r48_c24,limit=1] background set value -4934446
execute if score #BS2 holo.tmp matches 0 run data modify entity @e[tag=pixel_r50_c22,limit=1] background set value -10855816
execute if score #BS2 holo.tmp matches 1 run data modify entity @e[tag=pixel_r50_c22,limit=1] background set value -10855816
execute if score #BS2 holo.tmp matches 2 run data modify entity @e[tag=pixel_r50_c22,limit=1] background set value -4934446
execute if score #BS2 holo.tmp matches 0 run data modify entity @e[tag=pixel_r50_c26,limit=1] background set value -10855816
execute if score #BS2 holo.tmp matches 1 run data modify entity @e[tag=pixel_r50_c26,limit=1] background set value -10855816
execute if score #BS2 holo.tmp matches 2 run data modify entity @e[tag=pixel_r50_c26,limit=1] background set value -4934446
execute if score #BS2 holo.tmp matches 0 run data modify entity @e[tag=pixel_r52_c24,limit=1] background set value -10855816
execute if score #BS2 holo.tmp matches 1 run data modify entity @e[tag=pixel_r52_c24,limit=1] background set value -10855816
execute if score #BS2 holo.tmp matches 2 run data modify entity @e[tag=pixel_r52_c24,limit=1] background set value -4934446
execute if score #BS2 holo.tmp matches 0 run data modify entity @e[tag=pixel_r49_c23,limit=1] background set value -6908236
execute if score #BS2 holo.tmp matches 1 run data modify entity @e[tag=pixel_r49_c23,limit=1] background set value -4934446
execute if score #BS2 holo.tmp matches 2 run data modify entity @e[tag=pixel_r49_c23,limit=1] background set value -16
execute if score #BS2 holo.tmp matches 0 run data modify entity @e[tag=pixel_r49_c24,limit=1] background set value -6908236
execute if score #BS2 holo.tmp matches 1 run data modify entity @e[tag=pixel_r49_c24,limit=1] background set value -4934446
execute if score #BS2 holo.tmp matches 2 run data modify entity @e[tag=pixel_r49_c24,limit=1] background set value -16
execute if score #BS2 holo.tmp matches 0 run data modify entity @e[tag=pixel_r49_c25,limit=1] background set value -6908236
execute if score #BS2 holo.tmp matches 1 run data modify entity @e[tag=pixel_r49_c25,limit=1] background set value -4934446
execute if score #BS2 holo.tmp matches 2 run data modify entity @e[tag=pixel_r49_c25,limit=1] background set value -16
execute if score #BS2 holo.tmp matches 0 run data modify entity @e[tag=pixel_r50_c23,limit=1] background set value -6908236
execute if score #BS2 holo.tmp matches 1 run data modify entity @e[tag=pixel_r50_c23,limit=1] background set value -4934446
execute if score #BS2 holo.tmp matches 2 run data modify entity @e[tag=pixel_r50_c23,limit=1] background set value -16
execute if score #BS2 holo.tmp matches 0 run data modify entity @e[tag=pixel_r50_c25,limit=1] background set value -6908236
execute if score #BS2 holo.tmp matches 1 run data modify entity @e[tag=pixel_r50_c25,limit=1] background set value -4934446
execute if score #BS2 holo.tmp matches 2 run data modify entity @e[tag=pixel_r50_c25,limit=1] background set value -16
execute if score #BS2 holo.tmp matches 0 run data modify entity @e[tag=pixel_r51_c23,limit=1] background set value -6908236
execute if score #BS2 holo.tmp matches 1 run data modify entity @e[tag=pixel_r51_c23,limit=1] background set value -4934446
execute if score #BS2 holo.tmp matches 2 run data modify entity @e[tag=pixel_r51_c23,limit=1] background set value -16
execute if score #BS2 holo.tmp matches 0 run data modify entity @e[tag=pixel_r51_c24,limit=1] background set value -6908236
execute if score #BS2 holo.tmp matches 1 run data modify entity @e[tag=pixel_r51_c24,limit=1] background set value -4934446
execute if score #BS2 holo.tmp matches 2 run data modify entity @e[tag=pixel_r51_c24,limit=1] background set value -16
execute if score #BS2 holo.tmp matches 0 run data modify entity @e[tag=pixel_r51_c25,limit=1] background set value -6908236
execute if score #BS2 holo.tmp matches 1 run data modify entity @e[tag=pixel_r51_c25,limit=1] background set value -4934446
execute if score #BS2 holo.tmp matches 2 run data modify entity @e[tag=pixel_r51_c25,limit=1] background set value -16
execute if score #BS2 holo.tmp matches 0 run data modify entity @e[tag=pixel_r50_c24,limit=1] background set value -4934446
execute if score #BS2 holo.tmp matches 1 run data modify entity @e[tag=pixel_r50_c24,limit=1] background set value -16
execute if score #BS2 holo.tmp matches 2 run data modify entity @e[tag=pixel_r50_c24,limit=1] background set value -16

# === BIG STAR 3 at (58, 104) ===
execute store result score #BS3 holo.tmp run random value 0..2
execute if score #BS3 holo.tmp matches 0 run data modify entity @e[tag=pixel_r56_c104,limit=1] background set value -10855816
execute if score #BS3 holo.tmp matches 1 run data modify entity @e[tag=pixel_r56_c104,limit=1] background set value -10855816
execute if score #BS3 holo.tmp matches 2 run data modify entity @e[tag=pixel_r56_c104,limit=1] background set value -4934446
execute if score #BS3 holo.tmp matches 0 run data modify entity @e[tag=pixel_r58_c102,limit=1] background set value -10855816
execute if score #BS3 holo.tmp matches 1 run data modify entity @e[tag=pixel_r58_c102,limit=1] background set value -10855816
execute if score #BS3 holo.tmp matches 2 run data modify entity @e[tag=pixel_r58_c102,limit=1] background set value -4934446
execute if score #BS3 holo.tmp matches 0 run data modify entity @e[tag=pixel_r58_c106,limit=1] background set value -10855816
execute if score #BS3 holo.tmp matches 1 run data modify entity @e[tag=pixel_r58_c106,limit=1] background set value -10855816
execute if score #BS3 holo.tmp matches 2 run data modify entity @e[tag=pixel_r58_c106,limit=1] background set value -4934446
execute if score #BS3 holo.tmp matches 0 run data modify entity @e[tag=pixel_r60_c104,limit=1] background set value -10855816
execute if score #BS3 holo.tmp matches 1 run data modify entity @e[tag=pixel_r60_c104,limit=1] background set value -10855816
execute if score #BS3 holo.tmp matches 2 run data modify entity @e[tag=pixel_r60_c104,limit=1] background set value -4934446
execute if score #BS3 holo.tmp matches 0 run data modify entity @e[tag=pixel_r57_c103,limit=1] background set value -6908236
execute if score #BS3 holo.tmp matches 1 run data modify entity @e[tag=pixel_r57_c103,limit=1] background set value -4934446
execute if score #BS3 holo.tmp matches 2 run data modify entity @e[tag=pixel_r57_c103,limit=1] background set value -16
execute if score #BS3 holo.tmp matches 0 run data modify entity @e[tag=pixel_r57_c104,limit=1] background set value -6908236
execute if score #BS3 holo.tmp matches 1 run data modify entity @e[tag=pixel_r57_c104,limit=1] background set value -4934446
execute if score #BS3 holo.tmp matches 2 run data modify entity @e[tag=pixel_r57_c104,limit=1] background set value -16
execute if score #BS3 holo.tmp matches 0 run data modify entity @e[tag=pixel_r57_c105,limit=1] background set value -6908236
execute if score #BS3 holo.tmp matches 1 run data modify entity @e[tag=pixel_r57_c105,limit=1] background set value -4934446
execute if score #BS3 holo.tmp matches 2 run data modify entity @e[tag=pixel_r57_c105,limit=1] background set value -16
execute if score #BS3 holo.tmp matches 0 run data modify entity @e[tag=pixel_r58_c103,limit=1] background set value -6908236
execute if score #BS3 holo.tmp matches 1 run data modify entity @e[tag=pixel_r58_c103,limit=1] background set value -4934446
execute if score #BS3 holo.tmp matches 2 run data modify entity @e[tag=pixel_r58_c103,limit=1] background set value -16
execute if score #BS3 holo.tmp matches 0 run data modify entity @e[tag=pixel_r58_c105,limit=1] background set value -6908236
execute if score #BS3 holo.tmp matches 1 run data modify entity @e[tag=pixel_r58_c105,limit=1] background set value -4934446
execute if score #BS3 holo.tmp matches 2 run data modify entity @e[tag=pixel_r58_c105,limit=1] background set value -16
execute if score #BS3 holo.tmp matches 0 run data modify entity @e[tag=pixel_r59_c103,limit=1] background set value -6908236
execute if score #BS3 holo.tmp matches 1 run data modify entity @e[tag=pixel_r59_c103,limit=1] background set value -4934446
execute if score #BS3 holo.tmp matches 2 run data modify entity @e[tag=pixel_r59_c103,limit=1] background set value -16
execute if score #BS3 holo.tmp matches 0 run data modify entity @e[tag=pixel_r59_c104,limit=1] background set value -6908236
execute if score #BS3 holo.tmp matches 1 run data modify entity @e[tag=pixel_r59_c104,limit=1] background set value -4934446
execute if score #BS3 holo.tmp matches 2 run data modify entity @e[tag=pixel_r59_c104,limit=1] background set value -16
execute if score #BS3 holo.tmp matches 0 run data modify entity @e[tag=pixel_r59_c105,limit=1] background set value -6908236
execute if score #BS3 holo.tmp matches 1 run data modify entity @e[tag=pixel_r59_c105,limit=1] background set value -4934446
execute if score #BS3 holo.tmp matches 2 run data modify entity @e[tag=pixel_r59_c105,limit=1] background set value -16
execute if score #BS3 holo.tmp matches 0 run data modify entity @e[tag=pixel_r58_c104,limit=1] background set value -4934446
execute if score #BS3 holo.tmp matches 1 run data modify entity @e[tag=pixel_r58_c104,limit=1] background set value -16
execute if score #BS3 holo.tmp matches 2 run data modify entity @e[tag=pixel_r58_c104,limit=1] background set value -16

# === BINARY STAR PAIRS (3 pairs, both flicker together) ===
execute store result score #DP0 holo.tmp run random value 0..2
execute if score #DP0 holo.tmp matches 0 run data modify entity @e[tag=pixel_r3_c95,limit=1] background set value -10855816
execute if score #DP0 holo.tmp matches 1 run data modify entity @e[tag=pixel_r3_c95,limit=1] background set value -4934446
execute if score #DP0 holo.tmp matches 2 run data modify entity @e[tag=pixel_r3_c95,limit=1] background set value -16
execute if score #DP0 holo.tmp matches 0 run data modify entity @e[tag=pixel_r4_c97,limit=1] background set value -10855816
execute if score #DP0 holo.tmp matches 1 run data modify entity @e[tag=pixel_r4_c97,limit=1] background set value -4934446
execute if score #DP0 holo.tmp matches 2 run data modify entity @e[tag=pixel_r4_c97,limit=1] background set value -16

execute store result score #DP1 holo.tmp run random value 0..2
execute if score #DP1 holo.tmp matches 0 run data modify entity @e[tag=pixel_r45_c55,limit=1] background set value -10855816
execute if score #DP1 holo.tmp matches 1 run data modify entity @e[tag=pixel_r45_c55,limit=1] background set value -4934446
execute if score #DP1 holo.tmp matches 2 run data modify entity @e[tag=pixel_r45_c55,limit=1] background set value -16
execute if score #DP1 holo.tmp matches 0 run data modify entity @e[tag=pixel_r46_c57,limit=1] background set value -10855816
execute if score #DP1 holo.tmp matches 1 run data modify entity @e[tag=pixel_r46_c57,limit=1] background set value -4934446
execute if score #DP1 holo.tmp matches 2 run data modify entity @e[tag=pixel_r46_c57,limit=1] background set value -16

execute store result score #DP2 holo.tmp run random value 0..2
execute if score #DP2 holo.tmp matches 0 run data modify entity @e[tag=pixel_r68_c110,limit=1] background set value -10855816
execute if score #DP2 holo.tmp matches 1 run data modify entity @e[tag=pixel_r68_c110,limit=1] background set value -4934446
execute if score #DP2 holo.tmp matches 2 run data modify entity @e[tag=pixel_r68_c110,limit=1] background set value -16
execute if score #DP2 holo.tmp matches 0 run data modify entity @e[tag=pixel_r68_c112,limit=1] background set value -10855816
execute if score #DP2 holo.tmp matches 1 run data modify entity @e[tag=pixel_r68_c112,limit=1] background set value -4934446
execute if score #DP2 holo.tmp matches 2 run data modify entity @e[tag=pixel_r68_c112,limit=1] background set value -16

# === INDIVIDUAL TWINKLING DOTS (8) ===
execute store result score #D0 holo.tmp run random value 0..2
execute if score #D0 holo.tmp matches 0 run data modify entity @e[tag=pixel_r4_c46,limit=1] background set value -10855816
execute if score #D0 holo.tmp matches 1 run data modify entity @e[tag=pixel_r4_c46,limit=1] background set value -4934446
execute if score #D0 holo.tmp matches 2 run data modify entity @e[tag=pixel_r4_c46,limit=1] background set value -16

execute store result score #D1 holo.tmp run random value 0..2
execute if score #D1 holo.tmp matches 0 run data modify entity @e[tag=pixel_r15_c54,limit=1] background set value -10855816
execute if score #D1 holo.tmp matches 1 run data modify entity @e[tag=pixel_r15_c54,limit=1] background set value -4934446
execute if score #D1 holo.tmp matches 2 run data modify entity @e[tag=pixel_r15_c54,limit=1] background set value -16

execute store result score #D2 holo.tmp run random value 0..2
execute if score #D2 holo.tmp matches 0 run data modify entity @e[tag=pixel_r17_c114,limit=1] background set value -10855816
execute if score #D2 holo.tmp matches 1 run data modify entity @e[tag=pixel_r17_c114,limit=1] background set value -4934446
execute if score #D2 holo.tmp matches 2 run data modify entity @e[tag=pixel_r17_c114,limit=1] background set value -16

execute store result score #D3 holo.tmp run random value 0..2
execute if score #D3 holo.tmp matches 0 run data modify entity @e[tag=pixel_r42_c8,limit=1] background set value -10855816
execute if score #D3 holo.tmp matches 1 run data modify entity @e[tag=pixel_r42_c8,limit=1] background set value -4934446
execute if score #D3 holo.tmp matches 2 run data modify entity @e[tag=pixel_r42_c8,limit=1] background set value -16

execute store result score #D4 holo.tmp run random value 0..2
execute if score #D4 holo.tmp matches 0 run data modify entity @e[tag=pixel_r46_c114,limit=1] background set value -10855816
execute if score #D4 holo.tmp matches 1 run data modify entity @e[tag=pixel_r46_c114,limit=1] background set value -4934446
execute if score #D4 holo.tmp matches 2 run data modify entity @e[tag=pixel_r46_c114,limit=1] background set value -16

execute store result score #D5 holo.tmp run random value 0..2
execute if score #D5 holo.tmp matches 0 run data modify entity @e[tag=pixel_r56_c54,limit=1] background set value -10855816
execute if score #D5 holo.tmp matches 1 run data modify entity @e[tag=pixel_r56_c54,limit=1] background set value -4934446
execute if score #D5 holo.tmp matches 2 run data modify entity @e[tag=pixel_r56_c54,limit=1] background set value -16

execute store result score #D6 holo.tmp run random value 0..2
execute if score #D6 holo.tmp matches 0 run data modify entity @e[tag=pixel_r62_c80,limit=1] background set value -10855816
execute if score #D6 holo.tmp matches 1 run data modify entity @e[tag=pixel_r62_c80,limit=1] background set value -4934446
execute if score #D6 holo.tmp matches 2 run data modify entity @e[tag=pixel_r62_c80,limit=1] background set value -16

execute store result score #D7 holo.tmp run random value 0..2
execute if score #D7 holo.tmp matches 0 run data modify entity @e[tag=pixel_r68_c44,limit=1] background set value -10855816
execute if score #D7 holo.tmp matches 1 run data modify entity @e[tag=pixel_r68_c44,limit=1] background set value -4934446
execute if score #D7 holo.tmp matches 2 run data modify entity @e[tag=pixel_r68_c44,limit=1] background set value -16

schedule function holo:art/galaxy/tick 4t
