# holo:paint/raycast_hit — A projector pixel is in range; pick the nearest and paint it
scoreboard players set #RC_HIT holo.tmp 1
execute as @e[tag=projector_pixel,distance=..0.5,sort=nearest,limit=1] run function holo:paint/paint_pixel
