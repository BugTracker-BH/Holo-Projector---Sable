function helix:_prep
$data modify storage helix:vm _ai_q set value "$(q)"
scoreboard players set helix _ai_found 0
execute if data storage helix:vm {_ai_q:"helix"} run function helix:ai/about
execute if data storage helix:vm {_ai_q:"helix"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"os"} run function helix:ai/about
execute if data storage helix:vm {_ai_q:"os"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"what"} run function helix:ai/about
execute if data storage helix:vm {_ai_q:"what"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"ctf"} run function helix:ai/ctf
execute if data storage helix:vm {_ai_q:"ctf"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"flag"} run function helix:ai/ctf
execute if data storage helix:vm {_ai_q:"flag"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"stage1"} run function helix:ai/stage1
execute if data storage helix:vm {_ai_q:"stage1"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"easy"} run function helix:ai/stage1
execute if data storage helix:vm {_ai_q:"easy"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"stage2"} run function helix:ai/stage2
execute if data storage helix:vm {_ai_q:"stage2"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"medium"} run function helix:ai/stage2
execute if data storage helix:vm {_ai_q:"medium"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"stage3"} run function helix:ai/stage3
execute if data storage helix:vm {_ai_q:"stage3"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"hard"} run function helix:ai/stage3
execute if data storage helix:vm {_ai_q:"hard"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"vault"} run function helix:ai/stage3
execute if data storage helix:vm {_ai_q:"vault"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"unlock"} run function helix:ai/unlock
execute if data storage helix:vm {_ai_q:"unlock"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"key"} run function helix:ai/unlock
execute if data storage helix:vm {_ai_q:"key"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"run"} run function helix:ai/run
execute if data storage helix:vm {_ai_q:"run"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"programs"} run function helix:ai/run
execute if data storage helix:vm {_ai_q:"programs"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"scale"} run function helix:ai/scale
execute if data storage helix:vm {_ai_q:"scale"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"hint"} run function helix:ai/hint
execute if data storage helix:vm {_ai_q:"hint"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"help"} run function helix:ai/hint
execute if data storage helix:vm {_ai_q:"help"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"commands"} run function helix:ai/commands
execute if data storage helix:vm {_ai_q:"commands"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"login"} run function helix:ai/login
execute if data storage helix:vm {_ai_q:"login"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"whoami"} run function helix:ai/whoami
execute if data storage helix:vm {_ai_q:"whoami"} run scoreboard players set helix _ai_found 1
execute if data storage helix:vm {_ai_q:"user"} run function helix:ai/whoami
execute if data storage helix:vm {_ai_q:"user"} run scoreboard players set helix _ai_found 1
execute if score helix _ai_found matches 0 run function helix:ai/qlen_compute
execute if score helix _ai_found matches 0 run data modify storage helix:shell _ai_needle set value "helix"
execute if score helix _ai_found matches 0 run scoreboard players set helix _ai_needle_len 5
execute if score helix _ai_found matches 0 run function helix:ai/contains_iter
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run function helix:ai/about
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run scoreboard players set helix _ai_found 1
execute if score helix _ai_found matches 0 run data modify storage helix:shell _ai_needle set value "ctf"
execute if score helix _ai_found matches 0 run scoreboard players set helix _ai_needle_len 3
execute if score helix _ai_found matches 0 run function helix:ai/contains_iter
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run function helix:ai/ctf
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run scoreboard players set helix _ai_found 1
execute if score helix _ai_found matches 0 run data modify storage helix:shell _ai_needle set value "flag"
execute if score helix _ai_found matches 0 run scoreboard players set helix _ai_needle_len 4
execute if score helix _ai_found matches 0 run function helix:ai/contains_iter
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run function helix:ai/ctf
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run scoreboard players set helix _ai_found 1
execute if score helix _ai_found matches 0 run data modify storage helix:shell _ai_needle set value "stage1"
execute if score helix _ai_found matches 0 run scoreboard players set helix _ai_needle_len 6
execute if score helix _ai_found matches 0 run function helix:ai/contains_iter
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run function helix:ai/stage1
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run scoreboard players set helix _ai_found 1
execute if score helix _ai_found matches 0 run data modify storage helix:shell _ai_needle set value "stage2"
execute if score helix _ai_found matches 0 run scoreboard players set helix _ai_needle_len 6
execute if score helix _ai_found matches 0 run function helix:ai/contains_iter
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run function helix:ai/stage2
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run scoreboard players set helix _ai_found 1
execute if score helix _ai_found matches 0 run data modify storage helix:shell _ai_needle set value "stage3"
execute if score helix _ai_found matches 0 run scoreboard players set helix _ai_needle_len 6
execute if score helix _ai_found matches 0 run function helix:ai/contains_iter
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run function helix:ai/stage3
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run scoreboard players set helix _ai_found 1
execute if score helix _ai_found matches 0 run data modify storage helix:shell _ai_needle set value "easy"
execute if score helix _ai_found matches 0 run scoreboard players set helix _ai_needle_len 4
execute if score helix _ai_found matches 0 run function helix:ai/contains_iter
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run function helix:ai/stage1
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run scoreboard players set helix _ai_found 1
execute if score helix _ai_found matches 0 run data modify storage helix:shell _ai_needle set value "medium"
execute if score helix _ai_found matches 0 run scoreboard players set helix _ai_needle_len 6
execute if score helix _ai_found matches 0 run function helix:ai/contains_iter
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run function helix:ai/stage2
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run scoreboard players set helix _ai_found 1
execute if score helix _ai_found matches 0 run data modify storage helix:shell _ai_needle set value "hard"
execute if score helix _ai_found matches 0 run scoreboard players set helix _ai_needle_len 4
execute if score helix _ai_found matches 0 run function helix:ai/contains_iter
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run function helix:ai/stage3
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run scoreboard players set helix _ai_found 1
execute if score helix _ai_found matches 0 run data modify storage helix:shell _ai_needle set value "vault"
execute if score helix _ai_found matches 0 run scoreboard players set helix _ai_needle_len 5
execute if score helix _ai_found matches 0 run function helix:ai/contains_iter
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run function helix:ai/stage3
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run scoreboard players set helix _ai_found 1
execute if score helix _ai_found matches 0 run data modify storage helix:shell _ai_needle set value "unlock"
execute if score helix _ai_found matches 0 run scoreboard players set helix _ai_needle_len 6
execute if score helix _ai_found matches 0 run function helix:ai/contains_iter
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run function helix:ai/unlock
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run scoreboard players set helix _ai_found 1
execute if score helix _ai_found matches 0 run data modify storage helix:shell _ai_needle set value "login"
execute if score helix _ai_found matches 0 run scoreboard players set helix _ai_needle_len 5
execute if score helix _ai_found matches 0 run function helix:ai/contains_iter
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run function helix:ai/login
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run scoreboard players set helix _ai_found 1
execute if score helix _ai_found matches 0 run data modify storage helix:shell _ai_needle set value "whoami"
execute if score helix _ai_found matches 0 run scoreboard players set helix _ai_needle_len 6
execute if score helix _ai_found matches 0 run function helix:ai/contains_iter
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run function helix:ai/whoami
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run scoreboard players set helix _ai_found 1
execute if score helix _ai_found matches 0 run data modify storage helix:shell _ai_needle set value "scale"
execute if score helix _ai_found matches 0 run scoreboard players set helix _ai_needle_len 5
execute if score helix _ai_found matches 0 run function helix:ai/contains_iter
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run function helix:ai/scale
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run scoreboard players set helix _ai_found 1
execute if score helix _ai_found matches 0 run data modify storage helix:shell _ai_needle set value "hint"
execute if score helix _ai_found matches 0 run scoreboard players set helix _ai_needle_len 4
execute if score helix _ai_found matches 0 run function helix:ai/contains_iter
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run function helix:ai/hint
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run scoreboard players set helix _ai_found 1
execute if score helix _ai_found matches 0 run data modify storage helix:shell _ai_needle set value "help"
execute if score helix _ai_found matches 0 run scoreboard players set helix _ai_needle_len 4
execute if score helix _ai_found matches 0 run function helix:ai/contains_iter
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run function helix:ai/hint
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run scoreboard players set helix _ai_found 1
execute if score helix _ai_found matches 0 run data modify storage helix:shell _ai_needle set value "command"
execute if score helix _ai_found matches 0 run scoreboard players set helix _ai_needle_len 7
execute if score helix _ai_found matches 0 run function helix:ai/contains_iter
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run function helix:ai/commands
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run scoreboard players set helix _ai_found 1
execute if score helix _ai_found matches 0 run data modify storage helix:shell _ai_needle set value "program"
execute if score helix _ai_found matches 0 run scoreboard players set helix _ai_needle_len 7
execute if score helix _ai_found matches 0 run function helix:ai/contains_iter
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run function helix:ai/run
execute if score helix _ai_sub_matched matches 1 if score helix _ai_found matches 0 run scoreboard players set helix _ai_found 1
execute if score helix _ai_found matches 0 run function helix:ai/unknown
