# helix_term:bridge/rb_pixel — MACRO: plot one pixel using current color
$function holo:text/set_pixel {px:$(px), py:$(py), color:0}
execute store result storage helix:vm _rbpx int 1 run scoreboard players get helix _rb_dummy
$function helix_term:bridge/rb_plot_real {px:$(px),py:$(py)}
