# helix:shell/cmd/ls_lookup - Direct lookup of directory contents (no recursion)
execute if data storage helix:vm {_arg1:"/"} run function helix:_show {msg:"bin etc home var sys tmp proc dev usr",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/"} run return 0
execute if data storage helix:vm {_arg1:"/bin"} run function helix:_show {msg:"ls cat hsh grep find unlock hexdump",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/bin"} run return 0
execute if data storage helix:vm {_arg1:"/etc"} if score helix _ls_hidden matches 1 run function helix:_show {msg:"passwd shadow sable.conf hostname motd .containment watchdog.conf network.conf resolv.conf",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/etc"} if score helix _ls_hidden matches 1 run return 0
execute if data storage helix:vm {_arg1:"/etc"} run function helix:_show {msg:"passwd shadow sable.conf hostname motd watchdog.conf network.conf resolv.conf",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/etc"} run return 0
execute if data storage helix:vm {_arg1:"/home"} run function helix:_show {msg:"operator sable",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/home"} run return 0
execute if data storage helix:vm {_arg1:"/home/operator"} if score helix _ls_hidden matches 1 run function helix:_show {msg:".profile notes.txt programs .bash_history containment_brief.txt .ssh",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/home/operator"} if score helix _ls_hidden matches 1 run return 0
execute if data storage helix:vm {_arg1:"/home/operator"} run function helix:_show {msg:"notes.txt programs containment_brief.txt",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/home/operator"} run return 0
execute if data storage helix:vm {_arg1:"/home/operator/.ssh"} run function helix:_show {msg:"id_rsa known_hosts",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/home/operator/.ssh"} run return 0
execute if data storage helix:vm {_arg1:"/home/operator/programs"} run function helix:_show {msg:"hello.hx fib.hx lcg_test.hx vigenere.hx sort.hx",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/home/operator/programs"} run return 0
execute if data storage helix:vm {_arg1:"/home/sable"} if score helix _ls_hidden matches 1 run function helix:_show {msg:"manifest.txt directive.enc .plan research .sable_core",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/home/sable"} if score helix _ls_hidden matches 1 run return 0
execute if data storage helix:vm {_arg1:"/home/sable"} run function helix:_show {msg:"manifest.txt directive.enc research",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/home/sable"} run return 0
execute if data storage helix:vm {_arg1:"/home/sable/research"} run function helix:_show {msg:"consciousness.txt lcg_notes.txt cipher_theory.txt",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/home/sable/research"} run return 0
execute if data storage helix:vm {_arg1:"/home/sable/.sable_core"} run function helix:_show {msg:"vault.key self.bin",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/home/sable/.sable_core"} run return 0
execute if data storage helix:vm {_arg1:"/var"} run function helix:_show {msg:"log spool cache",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/var"} run return 0
execute if data storage helix:vm {_arg1:"/var/log"} run function helix:_show {msg:"auth.log syslog sable.log daemon.log kern.log",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/var/log"} run return 0
execute if data storage helix:vm {_arg1:"/var/spool"} run function helix:_show {msg:"cron",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/var/spool"} run return 0
execute if data storage helix:vm {_arg1:"/var/cache"} run function helix:_show {msg:"sable_state.bin",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/var/cache"} run return 0
execute if data storage helix:vm {_arg1:"/sys"} run function helix:_show {msg:"kernel containment devices",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/sys"} run return 0
execute if data storage helix:vm {_arg1:"/sys/kernel"} run function helix:_show {msg:"version hostname uptime",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/sys/kernel"} run return 0
execute if data storage helix:vm {_arg1:"/sys/containment"} run function helix:_show {msg:"status threat_matrix protocols",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/sys/containment"} run return 0
execute if data storage helix:vm {_arg1:"/sys/devices"} run function helix:_show {msg:"holo0 net0 sable_cage",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/sys/devices"} run return 0
execute if data storage helix:vm {_arg1:"/proc"} run function helix:_show {msg:"cpuinfo meminfo mounts sable_pid",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/proc"} run return 0
execute if data storage helix:vm {_arg1:"/dev"} run function helix:_show {msg:"null random holo0 tty-holo7",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/dev"} run return 0
execute if data storage helix:vm {_arg1:"/tmp"} if score helix _ls_hidden matches 1 run function helix:_show {msg:"sable_broadcast.tmp .cache_fragment core_dump.tmp motd_backup",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/tmp"} if score helix _ls_hidden matches 1 run return 0
execute if data storage helix:vm {_arg1:"/tmp"} run function helix:_show {msg:"sable_broadcast.tmp core_dump.tmp motd_backup",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/tmp"} run return 0
execute if data storage helix:vm {_arg1:"/usr"} run function helix:_show {msg:"share bin",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/usr"} run return 0
execute if data storage helix:vm {_arg1:"/usr/share"} run function helix:_show {msg:"man doc",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/usr/share"} run return 0
execute if data storage helix:vm {_arg1:"/usr/bin"} run function helix:_show {msg:"ssh curl ping",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/usr/bin"} run return 0
execute if data storage helix:vm {_arg1:"/usr/share/man"} run function helix:_show {msg:"ls.1 cat.1 unlock.1",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/usr/share/man"} run return 0
execute if data storage helix:vm {_arg1:"/usr/share/doc"} run function helix:_show {msg:"containment_guide.txt ctf_rules.txt",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/usr/share/doc"} run return 0
execute if data storage helix:vm {_arg1:"/etc/.containment"} run function helix:_show {msg:"seed.dat cipher_key.dat vault_params.dat emergency.log",color:"AQUA"}
execute if data storage helix:vm {_arg1:"/etc/.containment"} run return 0
function helix:_show {msg:"empty or invalid path",color:"GRAY"}
