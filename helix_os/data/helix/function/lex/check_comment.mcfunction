# helix:lex/check_comment — Check if current / is a // comment start, skip to end of line
scoreboard players operation helix _tmp1 = helix _tok_pos
scoreboard players add helix _tmp1 1
execute if score helix _tmp1 >= helix _src_len run return 0
execute store result storage helix:vm _i int 1 run scoreboard players get helix _tmp1
scoreboard players add helix _tmp1 1
execute store result storage helix:vm _j int 1 run scoreboard players get helix _tmp1
data modify storage helix:vm _peek_ch set string storage helix:vm src 0 0
function helix:lex/check_comment_read with storage helix:vm
execute unless data storage helix:vm {_peek_ch:"/"} run return 0
# Skip to end of line
function helix:lex/skip_to_eol
