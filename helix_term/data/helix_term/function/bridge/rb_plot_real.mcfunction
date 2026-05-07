# helix_term:bridge/rb_plot_real — MACRO: actually plot using current color in storage
$execute store result score helix _rb_color_int run data get storage helix:vm color
$function holo:text/set_pixel {px:$(px), py:$(py), color:0}
$data modify entity @e[tag=pixel_r$(py)_c$(px),limit=1] background set from storage helix:vm color
