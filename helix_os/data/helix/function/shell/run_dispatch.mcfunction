# helix:shell/run_dispatch - Execute after macro args are set
scoreboard players set #RAINBOW holo.state 0
function helix:shell/dispatch_safe
data modify storage helix:vm _history append from storage helix:vm _cmd
