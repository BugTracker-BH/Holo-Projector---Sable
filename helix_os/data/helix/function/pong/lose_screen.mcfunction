# helix:pong/lose_screen — AI wins, no fireworks (cancels tick first)
scoreboard players set helix pong_active 0
schedule clear helix:pong/tick
function holo:text/clear
function holo:text/set_scale {scale:0}
function holo:text/set_color {color:"RED"}
function holo:text/display {msg:"GG's, I win!"}
playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 0.8
