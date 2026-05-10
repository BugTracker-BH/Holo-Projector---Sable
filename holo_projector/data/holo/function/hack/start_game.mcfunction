# holo:hack/start_game — clear projector, init UI, dispatch to chosen mini-game
execute as @e[tag=projector_pixel] run data modify entity @s background set value -16777216
scoreboard players set helix hack_state 1
scoreboard players set helix hack_seconds 60
scoreboard players set helix hack_subtick 0
scoreboard players set helix hack_score 0
function holo:hack/draw_ui
execute if score helix hack_game matches 0 run function holo:hack/games/dodge/start
execute if score helix hack_game matches 1 run function holo:hack/games/reflex/start
execute if score helix hack_game matches 2 run function holo:hack/games/tracker/start
function holo:hack/timer_tick
