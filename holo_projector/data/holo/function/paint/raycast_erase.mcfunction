# holo:paint/raycast_erase — Run as player at eyes; raycast forward and erase (paint black)
scoreboard players set #BRUSH_COLOR holo.tmp -16777216
scoreboard players set #RC_STEP holo.tmp 0
scoreboard players set #RC_HIT holo.tmp 0
function holo:paint/raycast_loop
