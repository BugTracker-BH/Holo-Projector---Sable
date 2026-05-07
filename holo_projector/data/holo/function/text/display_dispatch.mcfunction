# holo:text/display_dispatch - Non-macro: route msg to renderer
execute unless entity @e[tag=projector_pixel,limit=1] run return 0
execute if score #LIVE_MODE holo.state matches 0 run function holo:text/display_actual
execute unless score #LIVE_MODE holo.state matches 0 run scoreboard players set #PENDING_MODE holo.state 5
execute unless score #LIVE_MODE holo.state matches 0 run function holo:mode/stop_smooth
