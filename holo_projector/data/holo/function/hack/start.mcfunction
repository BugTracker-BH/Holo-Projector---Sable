# holo:hack/start — AI takeover begins. Save state, run intro, pick game.
execute unless entity @e[tag=projector_pixel,limit=1] run scoreboard players set helix hack_active 0
execute unless entity @e[tag=projector_pixel,limit=1] run return 0

scoreboard players set helix hack_active 1
scoreboard players set helix hack_state 0
scoreboard players set helix hack_lives 3
scoreboard players set helix hack_seconds 60
scoreboard players set helix hack_subtick 0
scoreboard players set helix hack_score 0
scoreboard players set helix hack_intro_t 0

# Save the last shown message/color so we can restore on win
data modify storage helix:hack saved_msg set from storage helix:shell _show_msg
data modify storage helix:hack saved_color set from storage helix:shell _show_color

# Stop any holo animations / text
schedule clear holo:text/welcome_stage1
schedule clear holo:text/welcome_stage2
schedule clear holo:text/welcome_stage3
schedule clear holo:text/welcome_stage6
schedule clear holo:text/welcome_transition

# Pick which game (0..2) right now so we can preview later
execute store result score helix hack_game run random value 0..2

# Begin glitch-flash intro
function holo:hack/intro_anim

# Sound: glitch / power-down vibe
playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 1.0 0.7
playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 0.8 0.4
