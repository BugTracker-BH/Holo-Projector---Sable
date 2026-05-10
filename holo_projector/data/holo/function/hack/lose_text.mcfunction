# holo:hack/lose_text — show "YOU LOSE." in red
execute as @e[tag=projector_pixel] run data modify entity @s background set value -16777216
scoreboard players set #TEXT_COLOR holo.v -65536
scoreboard players set #SILENT_ERROR holo.tmp 1
scoreboard players set #FORCED_SCALE holo.v 4
data modify storage holo:m msg set value "YOU LOSE."
function holo:text/render_from_storage
