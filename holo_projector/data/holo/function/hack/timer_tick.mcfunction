# holo:hack/timer_tick — runs every tick during a game; advances timer, redraws UI, dispatches game tick
execute unless score helix hack_active matches 1 run return 0
execute unless score helix hack_state matches 1 run return 0

# Sub-tick countdown: 20t = 1 sec
scoreboard players add helix hack_subtick 1
scoreboard players set #SEC_DROP holo.tmp 0
execute if score helix hack_subtick matches 20.. run scoreboard players set #SEC_DROP holo.tmp 1
execute if score #SEC_DROP holo.tmp matches 1 run scoreboard players remove helix hack_seconds 1
execute if score #SEC_DROP holo.tmp matches 1 run scoreboard players set helix hack_subtick 0
execute if score #SEC_DROP holo.tmp matches 1 run function holo:hack/draw_ui

# Timer ran out -> let the game decide (DODGE: win, REFLEX/TRACKER: check goal)
execute if score helix hack_seconds matches ..0 if score helix hack_game matches 0 run function holo:hack/games/dodge/timeout
execute if score helix hack_seconds matches ..0 if score helix hack_game matches 1 run function holo:hack/games/reflex/timeout
execute if score helix hack_seconds matches ..0 if score helix hack_game matches 2 run function holo:hack/games/tracker/timeout
execute if score helix hack_seconds matches ..0 run return 0

# Dispatch to current game tick
execute if score helix hack_game matches 0 run function holo:hack/games/dodge/tick
execute if score helix hack_game matches 1 run function holo:hack/games/reflex/tick
execute if score helix hack_game matches 2 run function holo:hack/games/tracker/tick

# Re-schedule self
execute if score helix hack_state matches 1 run schedule function holo:hack/timer_tick 1t
