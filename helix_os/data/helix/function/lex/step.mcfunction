# helix:lex/step — Main lexer loop (bounded to 200 iterations to prevent stack overflow)
execute if score helix _tok_pos >= helix _src_len run data modify storage helix:vm tokens append value {t:"EOF"}
execute if score helix _tok_pos >= helix _src_len run return 0
scoreboard players set helix _tmp2 200
execute if score helix _lex_batch >= helix _tmp2 run return 0
execute store result storage helix:vm _i int 1 run scoreboard players get helix _tok_pos
scoreboard players operation helix _j = helix _tok_pos
scoreboard players add helix _j 1
execute store result storage helix:vm _j int 1 run scoreboard players get helix _j
function helix:lex/read_char_slice with storage helix:vm
function helix:lex/classify
scoreboard players add helix _lex_batch 1
scoreboard players set helix _tmp2 200
execute if score helix _tok_pos < helix _src_len if score helix _lex_batch < helix _tmp2 run function helix:lex/step
