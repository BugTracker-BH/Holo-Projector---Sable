# helix:ttt/lose_screen — AI wins: kill interactions, clear, red GG
scoreboard players set helix ttt_active 0
schedule clear helix:ttt/scan
kill @e[tag=ttt_interact]
function holo:text/clear
function holo:text/set_scale {scale:0}
function holo:text/set_color {color:"RED"}
function holo:text/display {msg:"GG's, I win!"}
playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 0.8
