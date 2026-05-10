# holo:hack/games/tracker/tick — move target, raycast crosshair, score on-target time, redraw
# === MOVE TARGET (every tick toward destination; new dest every 30 ticks) ===
scoreboard players add #TR_MOVE_T holo.tmp 1
execute if score #TR_MOVE_T holo.tmp matches 30.. run scoreboard players set #TR_MOVE_T holo.tmp 0
execute if score #TR_MOVE_T holo.tmp matches 0 run execute store result score #TR_DST_R holo.tmp run random value 18..58
execute if score #TR_MOVE_T holo.tmp matches 0 run execute store result score #TR_DST_C holo.tmp run random value 10..117

# Step toward destination
execute if score #TR_TGT_R holo.tmp < #TR_DST_R holo.tmp run scoreboard players add #TR_TGT_R holo.tmp 1
execute if score #TR_TGT_R holo.tmp > #TR_DST_R holo.tmp run scoreboard players remove #TR_TGT_R holo.tmp 1
execute if score #TR_TGT_C holo.tmp < #TR_DST_C holo.tmp run scoreboard players add #TR_TGT_C holo.tmp 1
execute if score #TR_TGT_C holo.tmp > #TR_DST_C holo.tmp run scoreboard players remove #TR_TGT_C holo.tmp 1

# === RAYCAST PLAYER AIM ===
scoreboard players set #TR_AIM_R holo.tmp -1
scoreboard players set #TR_AIM_C holo.tmp -1
scoreboard players set #TR_RC_STEP holo.tmp 0
scoreboard players set #TR_RC_HIT holo.tmp 0
execute as @p at @s anchored eyes run function holo:hack/games/tracker/raycast_loop

# === CHECK ON-TARGET ===
scoreboard players set #TR_ON holo.tmp 0
# On-target if aim within ±3 of target center
scoreboard players operation #TR_DR holo.tmp = #TR_AIM_R holo.tmp
scoreboard players operation #TR_DR holo.tmp -= #TR_TGT_R holo.tmp
scoreboard players operation #TR_DC holo.tmp = #TR_AIM_C holo.tmp
scoreboard players operation #TR_DC holo.tmp -= #TR_TGT_C holo.tmp
execute if score #TR_AIM_R holo.tmp matches 0.. if score #TR_DR holo.tmp matches -3..3 if score #TR_DC holo.tmp matches -3..3 run scoreboard players set #TR_ON holo.tmp 1
execute if score #TR_ON holo.tmp matches 1 run scoreboard players add helix hack_score 1

# === WIN CHECK (cumulative 600 ticks on target = 30s) ===
execute if score helix hack_score matches 600.. run function holo:hack/win
execute if score helix hack_score matches 600.. run return 0

# === REDRAW ===
function holo:hack/games/tracker/draw
