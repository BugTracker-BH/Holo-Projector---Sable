# holo:paint/raycast_paint — Run as player at eyes; raycast forward and paint with current color
scoreboard players operation #BRUSH_COLOR holo.tmp = holo paint_color
scoreboard players set #RC_STEP holo.tmp 0
scoreboard players set #RC_HIT holo.tmp 0
function holo:paint/raycast_loop
