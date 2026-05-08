# holo:text/render_from_storage - ALWAYS use single-line render (auto-scales to fit)
scoreboard players set #SCENE holo.state 0
execute store result score #MSGLEN holo.tmp run data get storage holo:m msg
execute if score #MSGLEN holo.tmp matches ..0 run return 0
scoreboard players set #TSCALE holo.tmp 1
execute if score #FORCED_SCALE holo.v matches 1.. run scoreboard players operation #TSCALE holo.tmp = #FORCED_SCALE holo.v
function holo:text/render_single_line
