# holo:paint/stop — Exit paint mode
scoreboard players set #PAINT_ON holo.state 0
schedule clear holo:paint/tick
kill @e[tag=paint_canvas]
clear @a carrot_on_a_stick[custom_data={holo_brush:1b}]
tellraw @a [{"text":"[PAINT] ","color":"light_purple","bold":true},{"text":"Paint mode ended. Brush removed.","color":"gray"}]
