# helix:lex/scan_number_loop — Advance while digit (bounded to 16 digits max)
execute if score helix _tok_pos >= helix _src_len run return 0
scoreboard players operation helix _num_len = helix _tok_pos
scoreboard players operation helix _num_len -= helix _num_start
scoreboard players set helix _tmp2 16
execute if score helix _num_len >= helix _tmp2 run return 0
execute store result storage helix:vm _i int 1 run scoreboard players get helix _tok_pos
scoreboard players operation helix _tmp1 = helix _tok_pos
scoreboard players add helix _tmp1 1
execute store result storage helix:vm _j int 1 run scoreboard players get helix _tmp1
function helix:lex/read_char_slice with storage helix:vm
scoreboard players set helix _is_digit 0
execute if data storage helix:vm {ch:"0"} run scoreboard players set helix _is_digit 1
execute if data storage helix:vm {ch:"1"} run scoreboard players set helix _is_digit 1
execute if data storage helix:vm {ch:"2"} run scoreboard players set helix _is_digit 1
execute if data storage helix:vm {ch:"3"} run scoreboard players set helix _is_digit 1
execute if data storage helix:vm {ch:"4"} run scoreboard players set helix _is_digit 1
execute if data storage helix:vm {ch:"5"} run scoreboard players set helix _is_digit 1
execute if data storage helix:vm {ch:"6"} run scoreboard players set helix _is_digit 1
execute if data storage helix:vm {ch:"7"} run scoreboard players set helix _is_digit 1
execute if data storage helix:vm {ch:"8"} run scoreboard players set helix _is_digit 1
execute if data storage helix:vm {ch:"9"} run scoreboard players set helix _is_digit 1
execute unless score helix _is_digit matches 1 run return 0
scoreboard players add helix _tok_pos 1
function helix:lex/scan_number_loop
