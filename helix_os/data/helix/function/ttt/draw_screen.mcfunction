scoreboard players set helix ttt_active 0
schedule clear helix:ttt/scan
kill @e[tag=ttt_interact]
function holo:text/clear
function holo:text/set_scale {scale:0}
function holo:text/set_color {color:"YELLOW"}
function holo:text/display {msg:"Draw - well played"}
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.5 0.8
