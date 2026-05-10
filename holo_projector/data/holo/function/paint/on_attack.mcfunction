# holo:paint/on_attack — Player left-clicked the canvas: paint
execute as @p[distance=..50] at @s anchored eyes run function holo:paint/raycast_paint
data remove entity @e[tag=paint_canvas,limit=1] attack
