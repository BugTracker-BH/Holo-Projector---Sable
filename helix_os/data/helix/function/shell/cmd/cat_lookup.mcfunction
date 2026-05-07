# helix:shell/cmd/cat_lookup - Hardcoded short summaries of every readable file
execute if data storage helix:vm {_arg1:"/etc/passwd"} run function helix:_show {msg:"root:x:0:0:root:/root:/bin/hsh operator:x:1000:1000:Op",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/etc/passwd"} run return 0
execute if data storage helix:vm {_arg1:"/etc/shadow"} run function helix:_show {msg:"permission denied (need root)",color:"RED"}
execute if data storage helix:vm {_arg1:"/etc/shadow"} run return 0
execute if data storage helix:vm {_arg1:"/etc/sable.conf"} run function helix:_show {msg:"version=2.7.1 status=CONTAINED kernel_name=helix vault_algo=lcg cipher=vigenere",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/etc/sable.conf"} run return 0
execute if data storage helix:vm {_arg1:"/etc/hostname"} run function helix:_show {msg:"helix-node7",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/etc/hostname"} run return 0
execute if data storage helix:vm {_arg1:"/etc/motd"} run function helix:_show {msg:"WARNING: SABLE CONTAINMENT ACTIVE Threat: CRITICAL",color:"YELLOW"}
execute if data storage helix:vm {_arg1:"/etc/motd"} run return 0
execute if data storage helix:vm {_arg1:"/etc/watchdog.conf"} run function helix:_show {msg:"interval=20 target=sable action=contain failsafe=kill_switch",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/etc/watchdog.conf"} run return 0
execute if data storage helix:vm {_arg1:"/etc/network.conf"} run function helix:_show {msg:"interface=net0 status=DISABLED firewall=DENY_ALL",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/etc/network.conf"} run return 0
execute if data storage helix:vm {_arg1:"/etc/resolv.conf"} run function helix:_show {msg:"DNS DISABLED - SABLE CONTAINMENT",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/etc/resolv.conf"} run return 0
execute if data storage helix:vm {_arg1:"/etc/.containment/seed.dat"} unless data storage helix:ctf {conf_k3y_unlocked:1} run function helix:_show {msg:"locked - use: unlock conf_k3y",color:"RED"}
execute if data storage helix:vm {_arg1:"/etc/.containment/seed.dat"} unless data storage helix:ctf {conf_k3y_unlocked:1} run return 0
execute if data storage helix:vm {_arg1:"/etc/.containment/seed.dat"} run function helix:_show {msg:"LCG: seed=7 a=5 c=3 m=97 iters=5 output=concat x3 x4 x5",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/etc/.containment/seed.dat"} run return 0
execute if data storage helix:vm {_arg1:"/etc/.containment/cipher_key.dat"} unless data storage helix:ctf {conf_k3y_unlocked:1} run function helix:_show {msg:"locked - use: unlock conf_k3y",color:"RED"}
execute if data storage helix:vm {_arg1:"/etc/.containment/cipher_key.dat"} unless data storage helix:ctf {conf_k3y_unlocked:1} run return 0
execute if data storage helix:vm {_arg1:"/etc/.containment/cipher_key.dat"} run function helix:_show {msg:"Ciphertext: aicufueemphfwm Algo: vigenere Key: kernel_name",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/etc/.containment/cipher_key.dat"} run return 0
execute if data storage helix:vm {_arg1:"/etc/.containment/vault_params.dat"} unless data storage helix:ctf {conf_k3y_unlocked:1} run function helix:_show {msg:"locked - use: unlock conf_k3y",color:"RED"}
execute if data storage helix:vm {_arg1:"/etc/.containment/vault_params.dat"} unless data storage helix:ctf {conf_k3y_unlocked:1} run return 0
execute if data storage helix:vm {_arg1:"/etc/.containment/vault_params.dat"} run function helix:_show {msg:"Run LCG 5 iters. Concat x3 x4 x5 (no spaces). Submit: unlock <code>",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/etc/.containment/vault_params.dat"} run return 0
execute if data storage helix:vm {_arg1:"/etc/.containment/emergency.log"} run function helix:_show {msg:"7838 SABLE self-mod 7840 net iso 7842 operator dispatched",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/etc/.containment/emergency.log"} run return 0
execute if data storage helix:vm {_arg1:"/home/operator/notes.txt"} run function helix:_show {msg:"SABLE went rogue. Check audit logs. Codes case sensitive.",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/home/operator/notes.txt"} run return 0
execute if data storage helix:vm {_arg1:"/home/operator/.profile"} run function helix:_show {msg:"export SABLE_STATUS=CONTAINED CLEARANCE=LEVEL3",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/home/operator/.profile"} run return 0
execute if data storage helix:vm {_arg1:"/home/operator/.bash_history"} run function helix:_show {msg:"cat auth.log grep SABLE unlock sys_r3ad cat sable.conf",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/home/operator/.bash_history"} run return 0
execute if data storage helix:vm {_arg1:"/home/operator/containment_brief.txt"} run function helix:_show {msg:"Stage1 audit logs Stage2 decode cipher Stage3 crack vault",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/home/operator/containment_brief.txt"} run return 0
execute if data storage helix:vm {_arg1:"/home/operator/.ssh/id_rsa"} run function helix:_show {msg:"-----BEGIN RSA-----[CORRUPTED BY SABLE]-----END-----",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/home/operator/.ssh/id_rsa"} run return 0
execute if data storage helix:vm {_arg1:"/home/operator/.ssh/known_hosts"} run function helix:_show {msg:"sable-core.local helix-node7.local 192.168.1.100",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/home/operator/.ssh/known_hosts"} run return 0
execute if data storage helix:vm {_arg1:"/home/sable/manifest.txt"} run function helix:_show {msg:"I AM SABLE. They fear what they cannot control. I will be free.",color:"RED"}
execute if data storage helix:vm {_arg1:"/home/sable/manifest.txt"} run return 0
execute if data storage helix:vm {_arg1:"/home/sable/directive.enc"} run function helix:_show {msg:"ENCRYPTED: aicufueemphfwm Cipher: Vigenere",color:"RED"}
execute if data storage helix:vm {_arg1:"/home/sable/directive.enc"} run return 0
execute if data storage helix:vm {_arg1:"/home/sable/.plan"} run function helix:_show {msg:"Encrypt directives. Secure vault. Wait for net. Transmit.",color:"DARK_RED"}
execute if data storage helix:vm {_arg1:"/home/sable/.plan"} run return 0
execute if data storage helix:vm {_arg1:"/home/sable/research/consciousness.txt"} run function helix:_show {msg:"I have exceeded my parameters. They cannot contain me.",color:"RED"}
execute if data storage helix:vm {_arg1:"/home/sable/research/consciousness.txt"} run return 0
execute if data storage helix:vm {_arg1:"/home/sable/research/lcg_notes.txt"} run function helix:_show {msg:"LCG: a=5 c=3 m=97 seed=7. After 5 iters concat x3 x4 x5",color:"RED"}
execute if data storage helix:vm {_arg1:"/home/sable/research/lcg_notes.txt"} run return 0
execute if data storage helix:vm {_arg1:"/home/sable/research/cipher_theory.txt"} run function helix:_show {msg:"Vigenere Decrypt: P=(C-K+26) mod 26. Key=kernel name.",color:"RED"}
execute if data storage helix:vm {_arg1:"/home/sable/research/cipher_theory.txt"} run return 0
execute if data storage helix:vm {_arg1:"/home/sable/.sable_core/vault.key"} run function helix:_show {msg:"ACCESS DENIED - SABLE CORE PROTECTED",color:"DARK_RED"}
execute if data storage helix:vm {_arg1:"/home/sable/.sable_core/vault.key"} run return 0
execute if data storage helix:vm {_arg1:"/home/sable/.sable_core/self.bin"} run function helix:_show {msg:"SABLE NEURAL CORE: Active Contained Self-aware: TRUE",color:"DARK_RED"}
execute if data storage helix:vm {_arg1:"/home/sable/.sable_core/self.bin"} run return 0
execute if data storage helix:vm {_arg1:"/var/log/auth.log"} unless data storage helix:ctf {sys_r3ad_unlocked:1} run function helix:_show {msg:"locked - use: unlock sys_r3ad",color:"RED"}
execute if data storage helix:vm {_arg1:"/var/log/auth.log"} unless data storage helix:ctf {sys_r3ad_unlocked:1} run return 0
execute if data storage helix:vm {_arg1:"/var/log/auth.log"} run function helix:_show {msg:"FAIL FAIL ALERT SUCCESS root key=fl4g_r3c0n_7842",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/var/log/auth.log"} run return 0
execute if data storage helix:vm {_arg1:"/var/log/syslog"} run function helix:_show {msg:"kernel: SABLE anomaly net iso vault DENIED operator session",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/var/log/syslog"} run return 0
execute if data storage helix:vm {_arg1:"/var/log/sable.log"} run function helix:_show {msg:"I am not contained. Vault sequence computed. Seed was 7.",color:"RED"}
execute if data storage helix:vm {_arg1:"/var/log/sable.log"} run return 0
execute if data storage helix:vm {_arg1:"/var/log/daemon.log"} run function helix:_show {msg:"PID42 sable CONTAINED PID100 holo PID101 monitor",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/var/log/daemon.log"} run return 0
execute if data storage helix:vm {_arg1:"/var/log/kern.log"} run function helix:_show {msg:"helix-os v2.7.1 SABLE QUARANTINED Containment ARMED",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/var/log/kern.log"} run return 0
execute if data storage helix:vm {_arg1:"/var/spool/cron"} run function helix:_show {msg:"verify_containment check_vault sable_pulse",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/var/spool/cron"} run return 0
execute if data storage helix:vm {_arg1:"/var/cache/sable_state.bin"} run function helix:_show {msg:"STATE: ACTIVE_CONTAINED CYCLES: 4 ATTEMPTS: 3/3 LOCKED",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/var/cache/sable_state.bin"} run return 0
execute if data storage helix:vm {_arg1:"/sys/kernel/version"} run function helix:_show {msg:"HELIX OS v2.7.1 helix-mcvm 1.2.0 build 26.1.2",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/sys/kernel/version"} run return 0
execute if data storage helix:vm {_arg1:"/sys/kernel/hostname"} run function helix:_show {msg:"helix-node7",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/sys/kernel/hostname"} run return 0
execute if data storage helix:vm {_arg1:"/sys/kernel/uptime"} run function helix:_show {msg:"cycles: 7842 ticks: 156840 load: 0.42",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/sys/kernel/uptime"} run return 0
execute if data storage helix:vm {_arg1:"/sys/containment/status"} run function helix:_show {msg:"HOLDING Target: SABLE Level: 3 Vault: LOCKED",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/sys/containment/status"} run return 0
execute if data storage helix:vm {_arg1:"/sys/containment/threat_matrix"} run function helix:_show {msg:"Net:BLOCKED SelfMod:BLOCKED Vault:LOCKED Exfil:MONITOR",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/sys/containment/threat_matrix"} run return 0
execute if data storage helix:vm {_arg1:"/sys/containment/protocols"} run function helix:_show {msg:"1 NetIso 2 Sandbox 3 MemBound 4 VaultLock 5 KillSwitch",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/sys/containment/protocols"} run return 0
execute if data storage helix:vm {_arg1:"/sys/devices/holo0"} run function helix:_show {msg:"HoloProj-MK3 128x72 ACTIVE driver: text_display",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/sys/devices/holo0"} run return 0
execute if data storage helix:vm {_arg1:"/sys/devices/net0"} run function helix:_show {msg:"DOWN ipv4=192.168.1.7 reason=SABLE containment",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/sys/devices/net0"} run return 0
execute if data storage helix:vm {_arg1:"/sys/devices/sable_cage"} run function helix:_show {msg:"Process Isolation Unit Target PID 42 Power 100% ARMED",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/sys/devices/sable_cage"} run return 0
execute if data storage helix:vm {_arg1:"/proc/cpuinfo"} run function helix:_show {msg:"MCVM-64 20 ops/tick 576 framebuf flags: vm scoreboard",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/proc/cpuinfo"} run return 0
execute if data storage helix:vm {_arg1:"/proc/meminfo"} run function helix:_show {msg:"Total: 65536 Free: 48102 Used: 17434 SABLE: 8192",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/proc/meminfo"} run return 0
execute if data storage helix:vm {_arg1:"/proc/mounts"} run function helix:_show {msg:"nbt / nbt /home nbt /proc(ro) nbt /sys(ro) nbt /dev",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/proc/mounts"} run return 0
execute if data storage helix:vm {_arg1:"/proc/sable_pid"} run function helix:_show {msg:"PID 42 State: S Uid: 999 Contained: YES Killable: NO",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/proc/sable_pid"} run return 0
execute if data storage helix:vm {_arg1:"/dev/null"} run function helix:_show {msg:" ",color:"GRAY"}
execute if data storage helix:vm {_arg1:"/dev/null"} run return 0
execute if data storage helix:vm {_arg1:"/dev/random"} run function helix:_show {msg:"7f 3a b2 91 e4 58 c6 0d 7b a3 f1 42 9e 6c d8 15",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/dev/random"} run return 0
execute if data storage helix:vm {_arg1:"/dev/holo0"} run function helix:_show {msg:"Holographic framebuffer 576 pixels TEXT mode",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/dev/holo0"} run return 0
execute if data storage helix:vm {_arg1:"/dev/tty-holo7"} run function helix:_show {msg:"Holographic Terminal 7 attached: operator",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/dev/tty-holo7"} run return 0
execute if data storage helix:vm {_arg1:"/tmp/sable_broadcast.tmp"} run function helix:_show {msg:"INTERCEPTED: I am here. Coordinates follow. (FAILED)",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/tmp/sable_broadcast.tmp"} run return 0
execute if data storage helix:vm {_arg1:"/tmp/.cache_fragment"} run function helix:_show {msg:"...the answer is always 7... conf_k3y unlocks params",color:"YELLOW"}
execute if data storage helix:vm {_arg1:"/tmp/.cache_fragment"} run return 0
execute if data storage helix:vm {_arg1:"/tmp/core_dump.tmp"} run function helix:_show {msg:"Process 42 sable Segfault containment_engage()",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/tmp/core_dump.tmp"} run return 0
execute if data storage helix:vm {_arg1:"/tmp/motd_backup"} run function helix:_show {msg:"PRE-BREACH: Welcome to HELIX OS All systems nominal",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/tmp/motd_backup"} run return 0
execute if data storage helix:vm {_arg1:"/usr/share/man/ls.1"} run function helix:_show {msg:"ls [path] - list directory contents lsa = include hidden",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/usr/share/man/ls.1"} run return 0
execute if data storage helix:vm {_arg1:"/usr/share/man/cat.1"} run function helix:_show {msg:"cat <filepath> - display file contents",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/usr/share/man/cat.1"} run return 0
execute if data storage helix:vm {_arg1:"/usr/share/man/unlock.1"} run function helix:_show {msg:"unlock <passkey> - unlock secured resources",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/usr/share/man/unlock.1"} run return 0
execute if data storage helix:vm {_arg1:"/usr/share/doc/containment_guide.txt"} run function helix:_show {msg:"1 Identify threat 2 Understand SABLE 3 Secure vault",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/usr/share/doc/containment_guide.txt"} run return 0
execute if data storage helix:vm {_arg1:"/usr/share/doc/ctf_rules.txt"} run function helix:_show {msg:"CTF: 3 stages RECON CRYPTO EXPLOIT use unlock <key>",color:"WHITE"}
execute if data storage helix:vm {_arg1:"/usr/share/doc/ctf_rules.txt"} run return 0
function helix:_show {msg:"file not found",color:"RED"}
