# helix_term:boot/finale_anim - Advance rainbow and re-render at scale 3
execute if score #RAINBOW holo.state matches 0 run return 0
scoreboard players add #RAINBOW_OFFSET holo.v 1
scoreboard players set #FORCED_SCALE holo.v 3
data modify storage holo:m msg set value "OS Ready!"
function holo:text/render_from_storage
schedule function helix_term:boot/finale_anim 3t
