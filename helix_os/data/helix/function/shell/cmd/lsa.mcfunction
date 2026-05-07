# helix:shell/cmd/lsa — List directory including hidden files
scoreboard players set helix _ls_hidden 1
execute store result score helix _arg_len run data get storage helix:vm _arg1
execute if score helix _arg_len matches 1.. run function helix:fs/resolve
execute if score helix _arg_len matches 1.. if score helix _resolved_node matches -1 run function helix:_show {msg:"no such directory",color:"RED"}
execute if score helix _arg_len matches 1.. if score helix _resolved_node matches -1 run return 0
execute if score helix _arg_len matches ..0 run scoreboard players operation helix _resolved_node = helix cwd
function helix:fs/ls_build
execute store result score helix _ls_len run data get storage helix:fs _ls_out
execute if score helix _ls_len matches ..0 run function helix:_show {msg:"empty",color:"GRAY"}
execute if score helix _ls_len matches 1.. run function helix:shell/cmd/ls_show with storage helix:fs
