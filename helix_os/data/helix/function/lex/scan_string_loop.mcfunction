# helix:lex/scan_string_loop — Advance until closing quote (bounded to 128 chars)
execute if score helix _tok_pos >= helix _src_len run return 0
scoreboard players operation helix _str_len = helix _tok_pos
scoreboard players operation helix _str_len -= helix _str_start
scoreboard players set helix _tmp2 128
execute if score helix _str_len >= helix _tmp2 run return 0
execute store result storage helix:vm _i int 1 run scoreboard players get helix _tok_pos
scoreboard players operation helix _tmp1 = helix _tok_pos
scoreboard players add helix _tmp1 1
execute store result storage helix:vm _j int 1 run scoreboard players get helix _tmp1
function helix:lex/read_char_slice with storage helix:vm
execute if data storage helix:vm {ch:"\""} run return 0
scoreboard players add helix _tok_pos 1
function helix:lex/scan_string_loop
