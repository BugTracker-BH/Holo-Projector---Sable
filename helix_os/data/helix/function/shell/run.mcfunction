# helix:shell/run - MACRO: entry point from clickable books. Usage: function helix:shell/run {cmd:"ls",arg:""}
scoreboard players set #RAINBOW holo.state 0
$data modify storage helix:vm _cmd set value "$(cmd)"
$data modify storage helix:vm _arg1 set value "$(arg)"
function helix:shell/dispatch_safe
data modify storage helix:vm _history append from storage helix:vm _cmd
