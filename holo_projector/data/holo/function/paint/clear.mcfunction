# holo:paint/clear — Wipe the canvas back to black (without exiting paint mode)
execute if entity @e[tag=projector_pixel,limit=1] run execute as @e[tag=projector_pixel] run data modify entity @s background set value -16777216
tellraw @a [{"text":"[PAINT] ","color":"light_purple","bold":true},{"text":"Canvas cleared.","color":"gray"}]
