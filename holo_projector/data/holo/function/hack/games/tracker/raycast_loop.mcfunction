# holo:hack/games/tracker/raycast_loop — recursive: step forward, find aimed pixel
execute if score #TR_RC_HIT holo.tmp matches 1 run return 0
execute if score #TR_RC_STEP holo.tmp matches 60.. run return 0
scoreboard players add #TR_RC_STEP holo.tmp 1
execute if entity @e[tag=projector_pixel,distance=..0.5,limit=1] run function holo:hack/games/tracker/raycast_hit
execute if score #TR_RC_HIT holo.tmp matches 0 positioned ^ ^ ^0.4 run function holo:hack/games/tracker/raycast_loop
