# helix:lex/skip_to_eol_loop — Bounded loop for comment skipping
scoreboard players add helix _tok_pos 1
scoreboard players add helix _skip_count 1
execute if score helix _tok_pos >= helix _src_len run return 0
execute if score helix _skip_count matches 256.. run return 0
execute store result storage helix:vm _i int 1 run scoreboard players get helix _tok_pos
scoreboard players operation helix _tmp1 = helix _tok_pos
scoreboard players add helix _tmp1 1
execute store result storage helix:vm _j int 1 run scoreboard players get helix _tmp1
function helix:lex/read_char_slice with storage helix:vm
execute if data storage helix:vm {ch:"\n"} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:"\n"} run return 0
function helix:lex/skip_to_eol_loop
