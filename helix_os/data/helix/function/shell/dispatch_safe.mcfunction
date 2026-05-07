# helix:shell/dispatch_safe — Route command to handler
scoreboard players set helix _cmd_found 0
execute if data storage helix:vm {_cmd:"ls"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"ls"} run function helix:shell/cmd/ls
execute if data storage helix:vm {_cmd:"lsa"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"lsa"} run function helix:shell/cmd/lsa
execute if data storage helix:vm {_cmd:"cat"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"cat"} run function helix:shell/cmd/cat
execute if data storage helix:vm {_cmd:"cd"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"cd"} run function helix:shell/cmd/cd
execute if data storage helix:vm {_cmd:"pwd"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"pwd"} run function helix:shell/cmd/pwd
execute if data storage helix:vm {_cmd:"tree"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"tree"} run function helix:shell/cmd/tree
execute if data storage helix:vm {_cmd:"stat"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"stat"} run function helix:shell/cmd/stat
execute if data storage helix:vm {_cmd:"find"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"find"} run function helix:shell/cmd/find
execute if data storage helix:vm {_cmd:"grep"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"grep"} run function helix:shell/cmd/grep
execute if data storage helix:vm {_cmd:"hexdump"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"hexdump"} run function helix:shell/cmd/hexdump
execute if data storage helix:vm {_cmd:"run"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"run"} run function helix:shell/cmd/run
execute if data storage helix:vm {_cmd:"unlock"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"unlock"} run function helix:shell/cmd/unlock
execute if data storage helix:vm {_cmd:"write"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"write"} run function helix:shell/cmd/write
execute if data storage helix:vm {_cmd:"ps"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"ps"} run function helix:shell/cmd/ps
execute if data storage helix:vm {_cmd:"kill"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"kill"} run function helix:shell/cmd/kill
execute if data storage helix:vm {_cmd:"history"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"history"} run function helix:shell/cmd/history
execute if data storage helix:vm {_cmd:"clear"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"clear"} run function helix:shell/cmd/clear
execute if data storage helix:vm {_cmd:"help"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"help"} run function helix:shell/cmd/help
execute if data storage helix:vm {_cmd:"whoami"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"whoami"} run function helix:shell/cmd/whoami
execute if data storage helix:vm {_cmd:"su"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"su"} run function helix:shell/cmd/su
execute if data storage helix:vm {_cmd:"chmod"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"chmod"} run function helix:shell/cmd/chmod
execute if data storage helix:vm {_cmd:"echo"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"echo"} run function helix:shell/cmd/echo
execute if data storage helix:vm {_cmd:"man"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"man"} run function helix:shell/cmd/man
execute if data storage helix:vm {_cmd:"touch"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"touch"} run function helix:shell/cmd/touch
execute if data storage helix:vm {_cmd:"rm"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"rm"} run function helix:shell/cmd/rm
execute if data storage helix:vm {_cmd:"mv"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"mv"} run function helix:shell/cmd/mv
execute if data storage helix:vm {_cmd:"cp"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"cp"} run function helix:shell/cmd/cp
execute if data storage helix:vm {_cmd:"env"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"env"} run function helix:shell/cmd/env
execute if data storage helix:vm {_cmd:"export"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"export"} run function helix:shell/cmd/export
execute if data storage helix:vm {_cmd:"alias"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"alias"} run function helix:shell/cmd/alias
execute if data storage helix:vm {_cmd:"ping"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"ping"} run function helix:shell/cmd/ping
execute if data storage helix:vm {_cmd:"ssh"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"ssh"} run function helix:shell/cmd/ssh
execute if data storage helix:vm {_cmd:"curl"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"curl"} run function helix:shell/cmd/curl
execute if data storage helix:vm {_cmd:"top"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"top"} run function helix:shell/cmd/top
execute if data storage helix:vm {_cmd:"df"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"df"} run function helix:shell/cmd/df
execute if data storage helix:vm {_cmd:"mount"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"mount"} run function helix:shell/cmd/mount
execute if data storage helix:vm {_cmd:"id"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"id"} run function helix:shell/cmd/id
execute if data storage helix:vm {_cmd:"uname"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"uname"} run function helix:shell/cmd/uname
execute if data storage helix:vm {_cmd:"uptime"} run scoreboard players set helix _cmd_found 1
execute if data storage helix:vm {_cmd:"uptime"} run function helix:shell/cmd/uptime
execute if score helix _cmd_found matches 0 run function helix:shell/cmd/unknown
