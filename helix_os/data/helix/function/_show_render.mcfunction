# helix:_show_render - MACRO: render on holo + chat. Every $ line has $(_t).
$execute if data storage holo:m {req_color:"$(_t)"} store success score helix _msg_len run data get storage holo:m msg
$execute if data storage holo:m {req_color:"$(_t)"} if score helix _msg_len matches 8.. run scoreboard players set #FORCED_SCALE holo.v 2
$execute if data storage holo:m {req_color:"$(_t)"} if score helix _msg_len matches 14.. run scoreboard players set #FORCED_SCALE holo.v 1
$execute if data storage holo:m {req_color:"$(_t)"} if score helix _msg_len matches ..7 run scoreboard players set #FORCED_SCALE holo.v 3
$execute if data storage holo:m {req_color:"$(_t)"} run function holo:text/apply_color
$execute if data storage holo:m {req_color:"$(_t)"} if entity @e[tag=projector_pixel,limit=1] run function holo:text/display_actual
$execute if data storage holo:m {req_color:"$(_t)"} run scoreboard players operation #FORCED_SCALE holo.v = helix _user_scale
$tellraw @a [{"text":"[HELIX] ","color":"$(_t)"},{"storage":"helix:shell","nbt":"_show_msg","color":"white"}]
$execute if data storage holo:m {req_color:"$(_t)"} run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 1.4
