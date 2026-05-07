execute if data storage helix:shell {_ai_qwork:""} run return 0
data modify storage helix:shell _ai_qwork set string storage helix:shell _ai_qwork 1
scoreboard players add helix _ai_q_len 1
function helix:ai/qlen_loop
