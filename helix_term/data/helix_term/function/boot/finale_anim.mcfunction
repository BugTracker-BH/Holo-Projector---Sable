# helix_term:boot/finale_anim - Rainbow cycle, re-render 2-line greeting
execute if score #RAINBOW holo.state matches 0 run return 0
scoreboard players add #RAINBOW_OFFSET holo.v 1
function helix_term:boot/finale_render
schedule function helix_term:boot/finale_anim 3t
