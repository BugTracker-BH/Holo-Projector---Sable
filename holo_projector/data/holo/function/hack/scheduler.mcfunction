# holo:hack/scheduler — runs every tick, counts down to next hack event
execute if score helix hack_lockout matches 1 run return 0
execute if score helix hack_active matches 1 run schedule function holo:hack/scheduler 1t
execute if score helix hack_active matches 1 run return 0
scoreboard players remove helix hack_timer 1
execute if score helix hack_timer matches ..0 run function holo:hack/start
execute unless score helix hack_active matches 1 run schedule function holo:hack/scheduler 1t
