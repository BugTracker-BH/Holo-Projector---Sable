# holo:hack/games/dodge/start — init paddle and 3 enemy slots
scoreboard players set #DG_PADDLE holo.tmp 60
# Enemies (row, col, alive). Start respawned/random.
execute store result score #DG_E0_C holo.tmp run random value 4..120
scoreboard players set #DG_E0_R holo.tmp 14
execute store result score #DG_E1_C holo.tmp run random value 4..120
scoreboard players set #DG_E1_R holo.tmp 8
execute store result score #DG_E2_C holo.tmp run random value 4..120
scoreboard players set #DG_E2_R holo.tmp 0
scoreboard players set #DG_FALL holo.tmp 0
