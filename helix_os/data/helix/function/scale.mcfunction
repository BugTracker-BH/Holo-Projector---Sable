# helix:scale — MACRO. Immediately changes projector text scale and re-renders current message with smart fallback.
# Usage: /function helix:scale {level:1}  or  {level:2}  or  {level:3}
$scoreboard players set helix _req_scale $(level)
scoreboard players set helix _scale_ok 0
execute if score helix _req_scale matches 1..3 run scoreboard players set helix _scale_ok 1
execute if score helix _scale_ok matches 0 run tellraw @a [{"text":"[helix] ","color":"red"},{"text":"invalid scale, use 1 2 or 3"}]
execute if score helix _scale_ok matches 0 run return 0
# Apply the new scale as the user preference
scoreboard players operation helix _user_scale = helix _req_scale
# Cancel all possibly-pending animation schedules
schedule clear helix_term:boot/finale_anim
schedule clear holo:text/welcome_transition
schedule clear holo:mode/transition_tick
# Reset holo state so display fires synchronously
scoreboard players set #RAINBOW holo.state 0
scoreboard players set #LIVE_MODE holo.state 0
scoreboard players set #TRANSITIONING holo.state 0
scoreboard players set #PENDING_MODE holo.state 0
scoreboard players set #WRAP_ERROR holo.tmp 0
scoreboard players set #SILENT_ERROR holo.tmp 0
# Apply smart fallback (if current msg cannot fit at requested scale, drop one level)
function helix:_smart_scale
# Re-render the currently stored message via display_actual
data modify storage holo:tx msg set from storage helix:shell msg
function helix:scale_set_color with storage helix:shell
function holo:text/display_actual
# Chat confirmation
$tellraw @a [{"text":"[helix] scale set to $(level)","color":"yellow"}]
