# helix:_show_holo - Display on holo projector if active
$execute if entity @e[tag=projector_pixel,limit=1] run function holo:text/set_color {color:"$(_show_color)"}
$execute if entity @e[tag=projector_pixel,limit=1] run function holo:text/display {msg:"$(_show_short)"}
