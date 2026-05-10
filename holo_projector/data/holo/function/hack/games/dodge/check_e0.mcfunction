# holo:hack/games/dodge/check_e0 — enemy 0 collision/respawn check
execute unless score #DG_E0_R holo.tmp matches 60.. run return 0
# Compute paddle range
scoreboard players operation #DG_PE holo.tmp = #DG_PADDLE holo.tmp
scoreboard players add #DG_PE holo.tmp 6
scoreboard players operation #DG_EE holo.tmp = #DG_E0_C holo.tmp
scoreboard players add #DG_EE holo.tmp 2
# Overlap if e0_c <= paddle_end AND e0_c+2 >= paddle_start
scoreboard players set #DG_HIT holo.tmp 0
execute if score #DG_E0_C holo.tmp <= #DG_PE holo.tmp if score #DG_EE holo.tmp >= #DG_PADDLE holo.tmp run scoreboard players set #DG_HIT holo.tmp 1
execute if score #DG_HIT holo.tmp matches 1 run function holo:hack/lose_attempt
execute if score #DG_HIT holo.tmp matches 1 run return 0
# Missed paddle: respawn at top with new col
execute store result score #DG_E0_C holo.tmp run random value 4..120
scoreboard players set #DG_E0_R holo.tmp 0
