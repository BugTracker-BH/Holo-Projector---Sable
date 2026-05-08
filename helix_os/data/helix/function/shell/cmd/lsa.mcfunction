# helix:shell/cmd/lsa - List directory including hidden
scoreboard players set helix _ls_hidden 1
execute store result score helix _arg_len run data get storage helix:vm _arg1
execute if score helix _arg_len matches 1.. run function helix:shell/cmd/ls_lookup
execute if score helix _arg_len matches 1.. run return 0
data modify storage helix:vm _arg1 set from storage helix:shell cwd
function helix:shell/cmd/ls_lookup
