# holo:hack/games/tracker/raycast_hit — captured the aimed pixel, store its row/col
scoreboard players set #TR_RC_HIT holo.tmp 1
execute as @e[tag=projector_pixel,distance=..0.5,sort=nearest,limit=1] run scoreboard players operation #TR_AIM_R holo.tmp = @s holo.row
execute as @e[tag=projector_pixel,distance=..0.5,sort=nearest,limit=1] run scoreboard players operation #TR_AIM_C holo.tmp = @s holo.col
