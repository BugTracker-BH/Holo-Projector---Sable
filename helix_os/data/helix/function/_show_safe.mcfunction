# helix:_show_safe - Truncate, show in chat, render on holo projector
execute store result score helix _msg_len run data get storage helix:shell _show_msg
data modify storage helix:shell _show_short set from storage helix:shell _show_msg
execute if score helix _msg_len matches 60.. run data modify storage helix:shell _show_short set string storage helix:shell _show_msg 0 60
function helix:_smart_scale
function helix:_show_chat with storage helix:shell
function helix:_show_holo with storage helix:shell
execute if entity @e[tag=projector_pixel,limit=1] run function holo:text/apply_color
execute if entity @e[tag=projector_pixel,limit=1] run function holo:text/display_dispatch
