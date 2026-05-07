# helix:shell/cmd/cat - Display file contents using real VFS path resolution
execute store result score helix _arg_len run data get storage helix:vm _arg1
execute if score helix _arg_len matches ..0 run function helix:_show {msg:"usage: cat <filepath>",color:"YELLOW"}
execute if score helix _arg_len matches ..0 run return 0
function helix:fs/resolve
execute if score helix _resolved_node matches -1 run function helix:_show {msg:"file not found",color:"RED"}
execute if score helix _resolved_node matches -1 run return 0
execute store result storage helix:fs _ci int 1 run scoreboard players get helix _resolved_node
function helix:fs/cat_check with storage helix:fs
function helix:fs/cat_validate
