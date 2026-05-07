# helix:lex/scan_number — Scan integer or float literal starting at _tok_pos
scoreboard players operation helix _num_start = helix _tok_pos
scoreboard players set helix _has_dot 0
function helix:lex/scan_number_loop
# Extract the number substring
execute store result storage helix:vm _i int 1 run scoreboard players get helix _num_start
execute store result storage helix:vm _j int 1 run scoreboard players get helix _tok_pos
function helix:lex/scan_number_extract with storage helix:vm
# Parse the integer value and emit token
execute store result score helix _num_val run data get storage helix:vm _num_str
data modify storage helix:vm tokens append value {t:"INT",n:0}
execute store result storage helix:vm tokens[-1].n int 1 run scoreboard players get helix _num_val
