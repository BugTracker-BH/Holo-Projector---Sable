# holo:paint/on_interact — Player right-clicked the canvas: erase
execute as @p[distance=..50] at @s anchored eyes run function holo:paint/raycast_erase
data remove entity @e[tag=paint_canvas,limit=1] interaction
