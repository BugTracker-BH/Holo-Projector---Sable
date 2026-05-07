# helix:_prep — Clean slate before every user-facing shell command.
# Cancels pending animations, resets holo state, applies smart scale fallback from helix:shell.msg length.
schedule clear helix_term:boot/finale_anim
schedule clear helix_term:boot/finale
schedule clear helix_term:boot/stage_welcome
schedule clear helix_term:boot/stage_to
schedule clear helix_term:boot/stage_the
schedule clear helix_term:boot/stage_helix
schedule clear helix_term:boot/stage_os
schedule clear holo:text/welcome_transition
schedule clear holo:mode/transition_tick
scoreboard players set #RAINBOW holo.state 0
scoreboard players set #LIVE_MODE holo.state 0
scoreboard players set #TRANSITIONING holo.state 0
scoreboard players set #PENDING_MODE holo.state 0
scoreboard players set #WRAP_ERROR holo.tmp 0
scoreboard players set helix _fw_looping 0
schedule clear helix_term:bridge/fireworks_burst
function helix:_smart_scale
