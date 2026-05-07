# helix:vault/recover — entry. Gate-checks all 3 CTF stages, then runtime-decodes the password.
# Requires solved_easy=1, solved_medium=1, solved_hard=1. If any gate fails, denied.
execute unless data storage helix:ctf {solved_easy:1} run function helix:vault/denied
execute unless data storage helix:ctf {solved_easy:1} run return 0
execute unless data storage helix:ctf {solved_medium:1} run function helix:vault/denied
execute unless data storage helix:ctf {solved_medium:1} run return 0
execute unless data storage helix:ctf {solved_hard:1} run function helix:vault/denied
execute unless data storage helix:ctf {solved_hard:1} run return 0
# All 3 stages cleared. Runtime-decode the cipher.
data modify storage helix:vault buf set value ""
data modify storage helix:vault ch set value ""
data modify storage helix:vault cipher set value [173, 117, 180, 176, 117, 174]
scoreboard players set helix _vk 66
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 0.6 1.5
function helix:vault/decode_loop
function helix:vault/reveal
