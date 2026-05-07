# helix:pong/end — stop the game manually
scoreboard players set helix pong_active 0
scoreboard players set helix _rb_active 0
scoreboard players set helix _fw_looping 0
schedule clear helix:pong/tick
schedule clear helix_term:bridge/rainbow_burst
function holo:text/clear
