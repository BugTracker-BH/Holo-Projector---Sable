# helix:shell/cmd/find - Direct lookup. Maps name to path. No recursion.
execute store result score helix _arg_len run data get storage helix:vm _arg1
execute if score helix _arg_len matches ..0 run function helix:_show {msg:"usage: find <name>",color:"YELLOW"}
execute if score helix _arg_len matches ..0 run return 0
execute if data storage helix:vm {_arg1:"auth.log"} run function helix:_show {msg:"/var/log/auth.log",color:"LIME"}
execute if data storage helix:vm {_arg1:"auth.log"} run return 0
execute if data storage helix:vm {_arg1:"passwd"} run function helix:_show {msg:"/etc/passwd",color:"LIME"}
execute if data storage helix:vm {_arg1:"passwd"} run return 0
execute if data storage helix:vm {_arg1:"shadow"} run function helix:_show {msg:"/etc/shadow",color:"LIME"}
execute if data storage helix:vm {_arg1:"shadow"} run return 0
execute if data storage helix:vm {_arg1:"seed.dat"} run function helix:_show {msg:"/etc/.containment/seed.dat",color:"LIME"}
execute if data storage helix:vm {_arg1:"seed.dat"} run return 0
execute if data storage helix:vm {_arg1:"directive.enc"} run function helix:_show {msg:"/home/sable/directive.enc",color:"LIME"}
execute if data storage helix:vm {_arg1:"directive.enc"} run return 0
execute if data storage helix:vm {_arg1:".plan"} run function helix:_show {msg:"/home/sable/.plan",color:"LIME"}
execute if data storage helix:vm {_arg1:".plan"} run return 0
execute if data storage helix:vm {_arg1:"vault_params.dat"} run function helix:_show {msg:"/etc/.containment/vault_params.dat",color:"LIME"}
execute if data storage helix:vm {_arg1:"vault_params.dat"} run return 0
execute if data storage helix:vm {_arg1:"sable.conf"} run function helix:_show {msg:"/etc/sable.conf",color:"LIME"}
execute if data storage helix:vm {_arg1:"sable.conf"} run return 0
execute if data storage helix:vm {_arg1:"cipher_key.dat"} run function helix:_show {msg:"/etc/.containment/cipher_key.dat",color:"LIME"}
execute if data storage helix:vm {_arg1:"cipher_key.dat"} run return 0
execute if data storage helix:vm {_arg1:"manifest.txt"} run function helix:_show {msg:"/home/sable/manifest.txt",color:"LIME"}
execute if data storage helix:vm {_arg1:"manifest.txt"} run return 0
execute if data storage helix:vm {_arg1:"notes.txt"} run function helix:_show {msg:"/home/operator/notes.txt",color:"LIME"}
execute if data storage helix:vm {_arg1:"notes.txt"} run return 0
execute if data storage helix:vm {_arg1:".bash_history"} run function helix:_show {msg:"/home/operator/.bash_history",color:"LIME"}
execute if data storage helix:vm {_arg1:".bash_history"} run return 0
execute if data storage helix:vm {_arg1:"lcg_notes.txt"} run function helix:_show {msg:"/home/sable/research/lcg_notes.txt",color:"LIME"}
execute if data storage helix:vm {_arg1:"lcg_notes.txt"} run return 0
execute if data storage helix:vm {_arg1:"sable.log"} run function helix:_show {msg:"/var/log/sable.log",color:"LIME"}
execute if data storage helix:vm {_arg1:"sable.log"} run return 0
execute if data storage helix:vm {_arg1:"vault.key"} run function helix:_show {msg:"/home/sable/.sable_core/vault.key",color:"LIME"}
execute if data storage helix:vm {_arg1:"vault.key"} run return 0
execute if data storage helix:vm {_arg1:"ctf_rules.txt"} run function helix:_show {msg:"/usr/share/doc/ctf_rules.txt",color:"LIME"}
execute if data storage helix:vm {_arg1:"ctf_rules.txt"} run return 0
execute if data storage helix:vm {_arg1:"containment_guide.txt"} run function helix:_show {msg:"/usr/share/doc/containment_guide.txt",color:"LIME"}
execute if data storage helix:vm {_arg1:"containment_guide.txt"} run return 0
execute if data storage helix:vm {_arg1:"emergency.log"} run function helix:_show {msg:"/etc/.containment/emergency.log",color:"LIME"}
execute if data storage helix:vm {_arg1:"emergency.log"} run return 0
function helix:_show {msg:"no matches",color:"GRAY"}
