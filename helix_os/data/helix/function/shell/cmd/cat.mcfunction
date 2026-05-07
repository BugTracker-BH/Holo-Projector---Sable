# helix:shell/cmd/cat - Direct content lookup. Bypasses VFS read for reliability.
execute store result score helix _arg_len run data get storage helix:vm _arg1
execute if score helix _arg_len matches ..0 run function helix:_show {msg:"usage: cat <filepath>",color:"YELLOW"}
execute if score helix _arg_len matches ..0 run return 0
function helix:shell/cmd/cat_lookup
