# helix:load — Initialize HELIX OS: Rogue AI Containment System
scoreboard objectives add helix dummy
scoreboard objectives add helix_perm dummy
scoreboard objectives add helix_term dummy
scoreboard objectives add enabled dummy

scoreboard players set helix running 0
scoreboard players set helix halted 1
scoreboard players set helix waiting 0
scoreboard players set helix pc 0
scoreboard players set helix depth 0
scoreboard players set helix steps 0
scoreboard players set helix pid 0
scoreboard players set helix heap_next 0
scoreboard players set helix uptime 0
scoreboard players set helix cwd 10

scoreboard players set helix _c33 33
scoreboard players set helix _cmod 50000017
scoreboard players set helix _c256 256
scoreboard players set helix _hash 0
scoreboard players set helix _code 0
scoreboard players set helix _user_scale 3
scoreboard players set helix _fw_looping 0
scoreboard players set helix neg1 -1
scoreboard players set helix k2 2
scoreboard players set helix k3 3
scoreboard players set helix k8 8
scoreboard players set helix k10 10
scoreboard players set helix k16 16
scoreboard players set helix k100 100
scoreboard players set helix k1000 1000
scoreboard players set helix fp_scale 1000

data modify storage helix:vm _history set value []
data modify storage helix:vm _cmd set value ""
data modify storage helix:vm _arg1 set value ""
data modify storage helix:vm src set value ""
data modify storage helix:vm tokens set value []
data modify storage helix:vm code set value []
data modify storage helix:vm stack set value []
data modify storage helix:vm frames set value [{locals:{},ret_addr:-1}]
data modify storage helix:vm arrays set value []
data modify storage helix:vm structs set value []
data modify storage helix:vm error set value ""
data modify storage helix:vm curr_instr set value {op:"halt"}

data modify storage helix:shell current_user set value "operator"
data modify storage helix:shell hostname set value "helix-node7"
data modify storage helix:shell cwd set value "/home/operator"
data modify storage helix:shell cwd_node set value 10
data modify storage helix:shell prompt_path set value "~"
data modify storage helix:shell msg set value ""
data modify storage helix:shell color set value "GREEN"
data modify storage helix:shell env set value {PATH:"/bin:/usr/bin",HOME:"/home/operator",USER:"operator",SHELL:"/bin/hsh",TERM:"holo-256color",LANG:"en_US.UTF-8",SABLE_STATUS:"CONTAINED",THREAT_LEVEL:"CRITICAL",CONTAINMENT_LEVEL:"3"}
data modify storage helix:shell aliases set value {ll:"lsa",la:"lsa",cls:"clear",h:"history"}

data modify storage helix:ctf set value {stage1_proven:0,easy_key_proven:0,solved_easy:0,conf_unlocked:0,medium_cipher_proven:0,solved_medium:0,vault_proven:0,solved_hard:0,sable_breached:0}

data modify storage helix:reveal buf set value ""
data modify storage helix:reveal ch set value ""
data modify storage helix:reveal cipher set value []

function helix:fs/init
function helix:vm/load

scoreboard players set helix_term enabled 0
tellraw @a [{"text":"[HELIX] ","color":"dark_green","bold":true},{"text":"OS loaded. ","color":"gray"},{"text":"SABLE CONTAINMENT ACTIVE","color":"red","bold":true},{"text":" | Threat: CRITICAL","color":"gold"}]
