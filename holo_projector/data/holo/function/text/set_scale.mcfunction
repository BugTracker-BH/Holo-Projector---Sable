# holo:text/set_scale — set forced text scale (0 = adaptive/auto-fit)
# Usage: /function holo:text/set_scale {scale:3}
$scoreboard players set #FORCED_SCALE holo.v $(scale)
execute if score #FORCED_SCALE holo.v matches ..-1 run scoreboard players set #FORCED_SCALE holo.v 0
execute if score #FORCED_SCALE holo.v matches 21.. run scoreboard players set #FORCED_SCALE holo.v 20
