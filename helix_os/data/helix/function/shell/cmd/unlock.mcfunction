# helix:shell/cmd/unlock — Process unlock keys for CTF and file access
execute store result score helix _arg_len run data get storage helix:vm _arg1
execute if score helix _arg_len matches ..0 run function helix:_show {msg:"usage: unlock <passkey>",color:"YELLOW"}
execute if score helix _arg_len matches ..0 run return 0
scoreboard players set helix _unlock_found 0
execute if data storage helix:vm {_arg1:"sys_r3ad"} run function helix:ctf/unlock_stage1
execute if data storage helix:vm {_arg1:"sys_r3ad"} run scoreboard players set helix _unlock_found 1
execute if data storage helix:vm {_arg1:"conf_k3y"} run function helix:ctf/unlock_conf
execute if data storage helix:vm {_arg1:"conf_k3y"} run scoreboard players set helix _unlock_found 1
execute if data storage helix:vm {_arg1:"fl4g_r3c0n_7842"} run function helix:ctf/easy/check
execute if data storage helix:vm {_arg1:"fl4g_r3c0n_7842"} run scoreboard players set helix _unlock_found 1
execute if data storage helix:vm {_arg1:"terminatesable"} run function helix:ctf/medium/submit_cipher
execute if data storage helix:vm {_arg1:"terminatesable"} run scoreboard players set helix _unlock_found 1
execute if data storage helix:vm {_arg1:"959065"} run function helix:ctf/hard/submit_vault
execute if data storage helix:vm {_arg1:"959065"} run scoreboard players set helix _unlock_found 1
execute if score helix _unlock_found matches 0 run function helix:shell/cmd/unlock_fail
