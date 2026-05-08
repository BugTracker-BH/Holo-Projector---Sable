# helix:_show_render - Non-macro: apply color, set scale, render on holo, print to chat
function helix:_smart_scale
function holo:text/apply_color
execute if entity @e[tag=projector_pixel,limit=1] run function holo:text/display_actual
tellraw @a [{"text":"[HELIX] ","color":"green"},{"storage":"helix:shell","nbt":"_show_msg","color":"white"}]
