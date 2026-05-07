scoreboard players set helix _fw_stage 1
scoreboard players set helix _fw_looping 1
function holo:text/set_scale {scale:0}
function holo:text/set_color {color:"LIME"}
function holo:text/display {msg:"CTF LEVEL 1 SOLVED"}
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1
function helix_term:bridge/fireworks_burst
