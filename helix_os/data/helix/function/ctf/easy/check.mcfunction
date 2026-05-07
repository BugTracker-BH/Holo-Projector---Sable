# helix:ctf/easy/submit — Stage 1 answer: fl4g_r3c0n_7842 (found in auth.log after unlock)
execute unless data storage helix:ctf {stage1_proven:1} run function helix:_show {msg:"unlock the auth log first",color:"RED"}
execute unless data storage helix:ctf {stage1_proven:1} run return 0
data modify storage helix:ctf easy_key_proven set value 1
data modify storage helix:ctf solved_easy set value 1
function helix:ctf/easy/pass
