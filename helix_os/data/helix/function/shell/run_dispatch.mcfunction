# helix:shell/run_dispatch - Stop animations, dispatch command
scoreboard players set #RAINBOW holo.state 0
scoreboard players set helix _fw_looping 0
schedule clear helix_term:bridge/fireworks_burst
schedule clear helix_term:boot/finale_anim
function helix:shell/dispatch_safe
data modify storage helix:vm _history append from storage helix:vm _cmd
