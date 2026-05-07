# helix:shell/cmd/lsa - Hardcoded directory listings including hidden
scoreboard players set helix _ls_hidden 1
execute store result score helix _arg_len run data get storage helix:vm _arg1
execute if score helix _arg_len matches ..0 run data modify storage helix:vm _arg1 set from storage helix:shell cwd
function helix:shell/cmd/ls_lookup
