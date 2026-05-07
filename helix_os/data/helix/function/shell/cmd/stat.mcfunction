# helix:shell/cmd/stat - Direct lookup of file metadata
execute store result score helix _arg_len run data get storage helix:vm _arg1
execute if score helix _arg_len matches ..0 run function helix:_show {msg:"usage: stat <path>",color:"YELLOW"}
execute if score helix _arg_len matches ..0 run return 0
execute if data storage helix:vm {_arg1:"/etc/passwd"} run function helix:_show {msg:"passwd file r-- root",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/etc/passwd"} run return 0
execute if data storage helix:vm {_arg1:"/etc/shadow"} run function helix:_show {msg:"shadow file --- root",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/etc/shadow"} run return 0
execute if data storage helix:vm {_arg1:"/etc/sable.conf"} run function helix:_show {msg:"sable.conf file r-- root",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/etc/sable.conf"} run return 0
execute if data storage helix:vm {_arg1:"/home/operator"} run function helix:_show {msg:"operator dir rwx operator",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/home/operator"} run return 0
execute if data storage helix:vm {_arg1:"/home/sable"} run function helix:_show {msg:"sable dir r-- sable",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/home/sable"} run return 0
execute if data storage helix:vm {_arg1:"/var/log/auth.log"} run function helix:_show {msg:"auth.log file r-- root (locked: sys_r3ad)",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/var/log/auth.log"} run return 0
function helix:_show {msg:"file or path not found",color:"RED"}
