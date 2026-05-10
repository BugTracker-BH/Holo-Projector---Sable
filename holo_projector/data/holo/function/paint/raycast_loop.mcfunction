# holo:paint/raycast_loop — Iterative raycast; recursive (max 60 steps × 0.4 = 24 blocks)
execute if score #RC_HIT holo.tmp matches 1 run return 0
execute if score #RC_STEP holo.tmp matches 60.. run return 0
scoreboard players add #RC_STEP holo.tmp 1

# If a projector pixel is within 0.5 blocks of the current position, that's our hit
execute if entity @e[tag=projector_pixel,distance=..0.5,limit=1] run function holo:paint/raycast_hit

# Step forward 0.4 blocks and recurse if no hit yet
execute if score #RC_HIT holo.tmp matches 0 positioned ^ ^ ^0.4 run function holo:paint/raycast_loop
