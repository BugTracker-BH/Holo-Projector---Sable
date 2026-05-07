# holo:text/set_spacing — set inter-character spacing (gap at scale 1)
# Usage: /function holo:text/set_spacing {spacing:2}
$scoreboard players set #CHAR_SPACING holo.v $(spacing)
execute if score #CHAR_SPACING holo.v matches ..-1 run scoreboard players set #CHAR_SPACING holo.v 0
execute if score #CHAR_SPACING holo.v matches 11.. run scoreboard players set #CHAR_SPACING holo.v 10
scoreboard players operation #CHAR_STRIDE holo.v = #CHAR_SPACING holo.v
scoreboard players add #CHAR_STRIDE holo.v 5
