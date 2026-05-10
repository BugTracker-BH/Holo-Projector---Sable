# holo:hack/init — Start the hack scheduler (called once after projector setup)
scoreboard objectives add helix dummy
scoreboard players set helix hack_lockout 0
scoreboard players set helix hack_active 0
scoreboard players set helix hack_state 0
scoreboard players set helix hack_lives 3
scoreboard players set helix hack_seconds 60
scoreboard players set helix hack_subtick 0
scoreboard players set helix hack_game 0
scoreboard players set helix hack_score 0
# Random first hack: 6000-12000 ticks (5-10 min)
execute store result score helix hack_timer run random value 6000..12000
schedule clear holo:hack/scheduler
function holo:hack/scheduler
tellraw @a [{"text":"[HELIX] ","color":"dark_green","bold":true},{"text":"Containment monitor active.","color":"gray"}]
