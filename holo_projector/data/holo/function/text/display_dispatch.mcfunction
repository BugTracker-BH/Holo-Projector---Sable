# holo:text/display_dispatch - Render msg on projector (forced direct)
execute unless entity @e[tag=projector_pixel,limit=1] run return 0
scoreboard players set #LIVE_MODE holo.state 0
function holo:text/display_actual
