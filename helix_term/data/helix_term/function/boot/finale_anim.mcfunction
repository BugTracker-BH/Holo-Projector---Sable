# helix_term:boot/finale_anim - Advance rainbow and re-render at scale 2
execute if score #RAINBOW holo.state matches 0 run return 0
scoreboard players add #RAINBOW_OFFSET holo.v 1
scoreboard players set #FORCED_SCALE holo.v 2
data modify storage holo:m msg set value "Helix OS is Ready!"
function holo:text/render_from_storage
schedule function helix_term:boot/finale_anim 3t
