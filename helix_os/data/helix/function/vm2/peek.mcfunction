# helix:vm2/peek — Read 1 char from src at _pos into storage _ch
execute store result storage helix:vm _i int 1 run scoreboard players get helix _pos
scoreboard players operation helix _tmp1 = helix _pos
scoreboard players add helix _tmp1 1
execute store result storage helix:vm _j int 1 run scoreboard players get helix _tmp1
function helix:vm2/peek_do with storage helix:vm
