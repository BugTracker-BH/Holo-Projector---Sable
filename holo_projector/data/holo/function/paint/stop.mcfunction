# Removed - feature deleted; ensure cleanup if anything lingers
scoreboard players set #PAINT_ON holo.state 0
schedule clear holo:paint/tick
kill @e[tag=paint_canvas]
clear @a carrot_on_a_stick[custom_data={holo_brush:1b}]
