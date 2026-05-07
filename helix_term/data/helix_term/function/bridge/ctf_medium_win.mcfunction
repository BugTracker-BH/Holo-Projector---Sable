scoreboard players set helix _fw_stage 2
scoreboard players set helix _fw_looping 1
function holo:text/set_scale {scale:0}
function holo:text/set_color {color:"AQUA"}
function holo:text/display {msg:"CTF LEVEL 2 SOLVED"}
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1
function helix_term:bridge/fireworks_burst
