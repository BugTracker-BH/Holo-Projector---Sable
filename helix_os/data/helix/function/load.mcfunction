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
data modify storage helix:vm frames set value []
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
data modify storage helix:shell env set value {}
data modify storage helix:shell env.PATH set value "/bin:/usr/bin"
data modify storage helix:shell env.HOME set value "/home/operator"
data modify storage helix:shell env.USER set value "operator"
data modify storage helix:shell env.SHELL set value "/bin/hsh"
data modify storage helix:shell env.TERM set value "holo-256color"
data modify storage helix:shell env.SABLE_STATUS set value "CONTAINED"
data modify storage helix:shell env.THREAT_LEVEL set value "CRITICAL"
data modify storage helix:shell aliases set value {}
data modify storage helix:shell aliases.ll set value "lsa"
data modify storage helix:shell aliases.cls set value "clear"
data modify storage helix:shell aliases.h set value "history"

data modify storage helix:ctf stage1_proven set value 0
data modify storage helix:ctf easy_key_proven set value 0
data modify storage helix:ctf solved_easy set value 0
data modify storage helix:ctf conf_unlocked set value 0
data modify storage helix:ctf medium_cipher_proven set value 0
data modify storage helix:ctf solved_medium set value 0
data modify storage helix:ctf vault_proven set value 0
data modify storage helix:ctf solved_hard set value 0
data modify storage helix:ctf sable_breached set value 0
data modify storage helix:ctf sys_r3ad_unlocked set value 0
data modify storage helix:ctf conf_k3y_unlocked set value 0

data modify storage helix:reveal buf set value ""
data modify storage helix:reveal ch set value ""
data modify storage helix:reveal cipher set value []

function helix:fs/init
function helix:vm/load

scoreboard players set helix_term enabled 0
tellraw @a [{"text":"[HELIX] ","color":"dark_green","bold":true},{"text":"OS loaded. ","color":"gray"},{"text":"SABLE CONTAINMENT ACTIVE","color":"red","bold":true},{"text":" | Threat: CRITICAL","color":"gold"}]
