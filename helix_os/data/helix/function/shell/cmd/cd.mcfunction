# helix:shell/cmd/cd — Change working directory
execute store result score helix _arg_len run data get storage helix:vm _arg1
execute if score helix _arg_len matches ..0 run data modify storage helix:vm _arg1 set value "/home/operator"
function helix:fs/resolve
execute if score helix _resolved_node matches -1 run function helix:_show {msg:"no such directory",color:"RED"}
execute if score helix _resolved_node matches -1 run return 0
execute store result storage helix:fs _cd_i int 1 run scoreboard players get helix _resolved_node
function helix:fs/cd_type_check with storage helix:fs
