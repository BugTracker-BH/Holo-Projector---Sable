# helix:lex/scan_string — Scan string literal between double quotes
scoreboard players add helix _tok_pos 1
scoreboard players operation helix _str_start = helix _tok_pos
function helix:lex/scan_string_loop
# Extract string content
execute store result storage helix:vm _i int 1 run scoreboard players get helix _str_start
execute store result storage helix:vm _j int 1 run scoreboard players get helix _tok_pos
function helix:lex/scan_string_extract with storage helix:vm
# Store in constants array and emit token
data modify storage helix:vm consts append from storage helix:vm _str_val
execute store result score helix _const_idx run data get storage helix:vm consts
scoreboard players remove helix _const_idx 1
data modify storage helix:vm tokens append value {t:"STR",idx:0}
execute store result storage helix:vm tokens[-1].idx int 1 run scoreboard players get helix _const_idx
# Skip closing quote
scoreboard players add helix _tok_pos 1
