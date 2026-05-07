# helix:pong/start — show round-config menu
function helix:_prep
function holo:text/clear
function holo:text/set_color {color:"AQUA"}
function holo:text/display {msg:"PONG select rounds"}
tellraw @a [{"text":"[PONG] ","color":"aqua","bold":true},{"text":"Choose: ","color":"gray"},{"text":"[BEST OF 5]","color":"green","clickEvent":{"action":"run_command","value":"/function helix:pong/begin_5"}},{"text":" "},{"text":"[BEST OF 10]","color":"yellow","clickEvent":{"action":"run_command","value":"/function helix:pong/begin_10"}},{"text":" "},{"text":"[BEST OF 20]","color":"red","clickEvent":{"action":"run_command","value":"/function helix:pong/begin_20"}}]
