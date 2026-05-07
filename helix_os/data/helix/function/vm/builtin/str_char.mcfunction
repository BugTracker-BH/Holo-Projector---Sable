# helix:vm/builtin/str_char — Pop index, pop string, push char code at index
execute store result score helix _idx run data get storage helix:vm stack[-1].n
data remove storage helix:vm stack[-1]
data modify storage helix:vm _sc_str set from storage helix:vm stack[-1].v
data remove storage helix:vm stack[-1]
execute store result storage helix:vm _i int 1 run scoreboard players get helix _idx
scoreboard players operation helix _tmp1 = helix _idx
scoreboard players add helix _tmp1 1
execute store result storage helix:vm _j int 1 run scoreboard players get helix _tmp1
function helix:vm/builtin/str_char_extract with storage helix:vm
data modify storage helix:vm stack append value {t:"int",n:0}
execute store result storage helix:vm stack[-1].n int 1 run data get storage helix:vm _sc_char
