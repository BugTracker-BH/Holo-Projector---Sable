# helix:_show_render - MACRO: render on holo + chat (all lines reference _t for MC rules)
$execute store success score helix _msg_len run data get storage holo:m msg
$execute if score helix _msg_len matches 8.. run scoreboard players set #FORCED_SCALE holo.v 2
$execute if score helix _msg_len matches 14.. run scoreboard players set #FORCED_SCALE holo.v 1
$execute if score helix _msg_len matches ..7 run scoreboard players set #FORCED_SCALE holo.v 3
$execute if entity @e[tag=projector_pixel,limit=1] run function holo:text/apply_color
$execute if entity @e[tag=projector_pixel,limit=1] run function holo:text/display_actual
$execute if entity @e[tag=projector_pixel,limit=1] run scoreboard players operation #FORCED_SCALE holo.v = helix _user_scale
$tellraw @a [{"text":"[HELIX] ","color":"green"},{"text":"$(_t) ","color":"dark_gray"},{"storage":"helix:shell","nbt":"_show_msg","color":"white"}]
$playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 1.4
