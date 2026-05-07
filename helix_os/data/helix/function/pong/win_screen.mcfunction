# helix:pong/win_screen — player wins, fireworks (cancels tick first, no CTF text overwrite)
scoreboard players set helix pong_active 0
schedule clear helix:pong/tick
function holo:text/clear
function holo:text/set_scale {scale:0}
function holo:text/set_color {color:"GREEN"}
function holo:text/display {msg:"GG's, you won!"}
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1
scoreboard players set helix _fw_stage 0
scoreboard players set helix _rb_active 1
function helix_term:bridge/rainbow_burst
