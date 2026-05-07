# helix_term:boot — Use holo's welcome-transition pipeline. Scale matches the user's saved preference globally.
scoreboard players set #RAINBOW holo.state 0
scoreboard players operation #FORCED_SCALE holo.v = helix _user_scale
scoreboard players set #LIVE_MODE holo.state 6
scoreboard players set #PENDING_MODE holo.state 0
scoreboard players set #TRANSITIONING holo.state 0
function holo:text/clear
schedule function helix_term:boot/stage_welcome 4t
