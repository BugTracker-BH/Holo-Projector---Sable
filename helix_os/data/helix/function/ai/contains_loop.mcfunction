execute if score helix _ai_sub_matched matches 1 run return 0
scoreboard players operation helix _ai_end = helix _ai_pos
scoreboard players operation helix _ai_end += helix _ai_needle_len
execute if score helix _ai_end > helix _ai_q_len run return 0
execute store result storage helix:shell _ai_p_start int 1 run scoreboard players get helix _ai_pos
execute store result storage helix:shell _ai_p_end int 1 run scoreboard players get helix _ai_end
function helix:ai/contains_slice with storage helix:shell
function helix:ai/contains_cmp with storage helix:shell
scoreboard players add helix _ai_pos 1
function helix:ai/contains_loop
