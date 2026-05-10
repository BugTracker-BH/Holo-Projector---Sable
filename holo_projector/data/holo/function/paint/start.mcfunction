# holo:paint/start — Enter paint mode: blank the canvas, give the brush, spawn click sensor
function holo:art/stop
execute unless entity @e[tag=projector_pixel,limit=1] run tellraw @a [{"text":"[PAINT] ","color":"red","bold":true},{"text":"Run /function helix_term:setup first.","color":"gray"}]
execute unless entity @e[tag=projector_pixel,limit=1] run return 0

# Blank the projector
execute as @e[tag=projector_pixel] run data modify entity @s background set value -16777216

# Init brush state (default red, size 1)
scoreboard objectives add holo dummy
scoreboard players set holo paint_color -65536
scoreboard players set holo paint_size 1
scoreboard players set #PAINT_ON holo.state 10

# Despawn any leftover paint canvas, then spawn a fresh one in front of the holo_anchor
kill @e[tag=paint_canvas]
execute at @e[tag=holo_anchor,limit=1] rotated as @e[tag=holo_anchor,limit=1] positioned ^ ^ ^0.05 run summon interaction ~ ~-15 ~ {Tags:["paint_canvas"],width:60f,height:30f,response:1b}

# Give the player a Holo Brush (carrot on a stick with custom_data marker)
clear @p carrot_on_a_stick[custom_data={holo_brush:1b}]
give @p carrot_on_a_stick[custom_data={holo_brush:1b},custom_name='{"text":"Holo Brush","color":"light_purple","bold":true,"italic":false}',lore=['{"text":"Left-click  -  paint","color":"gray","italic":false}','{"text":"Right-click - erase","color":"gray","italic":false}']]

# Show the menu and start the click-poll loop
function holo:paint/menu
function holo:paint/tick
