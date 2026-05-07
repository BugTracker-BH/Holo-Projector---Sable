# helix:ctf/hard/submit_vault — Stage 3: vault code 959065 from LCG
execute unless data storage helix:ctf {solved_medium:1} run function helix:_show {msg:"complete stage 2 first",color:"RED"}
execute unless data storage helix:ctf {solved_medium:1} run return 0
data modify storage helix:ctf vault_proven set value 1
data modify storage helix:ctf solved_hard set value 1
data modify storage helix:ctf sable_breached set value 1
function helix:ctf/hard/pass
