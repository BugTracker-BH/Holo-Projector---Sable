# helix:stockyard/win_screen — all targets covered, fireworks
scoreboard players set helix sy_active 0
function holo:text/clear
function holo:text/set_scale {scale:0}
function holo:text/set_color {color:"GREEN"}
function holo:text/display {msg:"GG's, you won!"}
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1
scoreboard players set helix _fw_stage 1
scoreboard players set helix _fw_looping 1
function helix_term:bridge/fireworks_burst
