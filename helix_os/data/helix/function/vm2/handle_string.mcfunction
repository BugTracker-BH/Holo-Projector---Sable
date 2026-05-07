# helix:vm2/handle_string — extract string between quotes and display
scoreboard players add helix _pos 1
scoreboard players operation helix _str_start = helix _pos
function helix:vm2/find_close_quote
execute store result storage helix:vm _i int 1 run scoreboard players get helix _str_start
execute store result storage helix:vm _j int 1 run scoreboard players get helix _pos
function helix:vm2/extract_str with storage helix:vm
function helix:vm2/show_str with storage helix:vm
