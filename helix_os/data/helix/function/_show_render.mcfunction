# helix:_show_render - Non-macro: set scale for this render, display, restore, chat
function helix:_smart_scale
function holo:text/apply_color
execute if entity @e[tag=projector_pixel,limit=1] run function holo:text/display_actual
scoreboard players operation #FORCED_SCALE holo.v = helix _user_scale
tellraw @a [{"text":"[HELIX] ","color":"green"},{"storage":"helix:shell","nbt":"_show_msg","color":"white"}]
