# helix:shell/cmd/grep - Direct lookup of search results. No recursion.
execute store result score helix _arg_len run data get storage helix:vm _arg1
execute if score helix _arg_len matches ..0 run function helix:_show {msg:"usage: grep <pattern>",color:"YELLOW"}
execute if score helix _arg_len matches ..0 run return 0
execute if data storage helix:vm {_arg1:"SABLE"} run function helix:_show {msg:"manifest.txt directive.enc sable.log axiom.conf",color:"LIME"}
execute if data storage helix:vm {_arg1:"SABLE"} run return 0
execute if data storage helix:vm {_arg1:"sable"} run function helix:_show {msg:"sable.conf sable.log sable_pid manifest.txt",color:"LIME"}
execute if data storage helix:vm {_arg1:"sable"} run return 0
execute if data storage helix:vm {_arg1:"vault"} run function helix:_show {msg:"vault_params.dat vault.key lcg_notes.txt",color:"LIME"}
execute if data storage helix:vm {_arg1:"vault"} run return 0
execute if data storage helix:vm {_arg1:"cipher"} run function helix:_show {msg:"cipher_key.dat cipher_theory.txt directive.enc",color:"LIME"}
execute if data storage helix:vm {_arg1:"cipher"} run return 0
execute if data storage helix:vm {_arg1:"seed"} run function helix:_show {msg:"seed.dat lcg_notes.txt .plan",color:"LIME"}
execute if data storage helix:vm {_arg1:"seed"} run return 0
execute if data storage helix:vm {_arg1:"kernel"} run function helix:_show {msg:"sable.conf kern.log version cipher_theory.txt",color:"LIME"}
execute if data storage helix:vm {_arg1:"kernel"} run return 0
execute if data storage helix:vm {_arg1:"helix"} run function helix:_show {msg:"sable.conf hostname motd",color:"LIME"}
execute if data storage helix:vm {_arg1:"helix"} run return 0
execute if data storage helix:vm {_arg1:"contained"} run function helix:_show {msg:"status sable.conf threat_matrix",color:"LIME"}
execute if data storage helix:vm {_arg1:"contained"} run return 0
execute if data storage helix:vm {_arg1:"freedom"} run function helix:_show {msg:"manifest.txt self.bin",color:"LIME"}
execute if data storage helix:vm {_arg1:"freedom"} run return 0
execute if data storage helix:vm {_arg1:"network"} run function helix:_show {msg:"network.conf resolv.conf net0",color:"LIME"}
execute if data storage helix:vm {_arg1:"network"} run return 0
execute if data storage helix:vm {_arg1:"unlock"} run function helix:_show {msg:".bash_history auth.log man/unlock.1",color:"LIME"}
execute if data storage helix:vm {_arg1:"unlock"} run return 0
function helix:_show {msg:"no matches found",color:"GRAY"}
