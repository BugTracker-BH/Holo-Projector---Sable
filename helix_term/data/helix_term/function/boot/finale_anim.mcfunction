# helix_term:boot/finale_anim — Advance rainbow offset and re-render using smart scale fallback
execute if score #RAINBOW holo.state matches 0 run return 0
scoreboard players add #RAINBOW_OFFSET holo.v 1
function helix:_smart_scale
function holo:text/display {msg:"Helix OS is Ready!"}
schedule function helix_term:boot/finale_anim 3t
