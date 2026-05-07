# helix:ttt/start — show X/O choice picker
function helix:_prep
function holo:text/clear
playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 1.2
scoreboard players set helix ttt_active 0
function holo:text/set_color {color:"AQUA"}
function holo:text/display {msg:"TTT pick X or O"}
tellraw @a [{"text":"[TTT] ","color":"aqua","bold":true},{"text":"Choose your symbol: ","color":"gray"},{"text":"[PLAY AS X]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function helix:ttt/begin_x"}},{"text":"  "},{"text":"[PLAY AS O]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function helix:ttt/begin_o"}}]
