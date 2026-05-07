# helix:shell/cmd/man — Show manual page by looking in /usr/share/man
execute store result score helix _arg_len run data get storage helix:vm _arg1
execute if score helix _arg_len matches ..0 run function helix:_show {msg:"usage: man <command>",color:"YELLOW"}
execute if score helix _arg_len matches ..0 run return 0
function helix:_show {msg:"man: see /usr/share/man/ or type help",color:"AQUA"}
