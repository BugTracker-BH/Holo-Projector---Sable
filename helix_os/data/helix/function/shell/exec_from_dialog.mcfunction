# helix:shell/exec_from_dialog — MACRO: entry point from Dialog UI with fields cmd and arg
scoreboard players set #RAINBOW holo.state 0
$data modify storage helix:vm _cmd set value "$(cmd)"
$data modify storage helix:vm _arg1 set value "$(arg)"
function helix:shell/dispatch_safe
data modify storage helix:vm _history append from storage helix:vm _cmd
execute if score helix_term enabled matches 1 run dialog show @s helix_term:terminal
