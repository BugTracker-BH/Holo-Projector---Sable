# helix:vm/builtin/str_len — Pop string from stack, push length as int
data modify storage helix:vm _top set from storage helix:vm stack[-1]
data remove storage helix:vm stack[-1]
scoreboard players set helix _tmp1 0
execute store result score helix _tmp1 run data get storage helix:vm _top.v
data modify storage helix:vm stack append value {t:"int",n:0}
execute store result storage helix:vm stack[-1].n int 1 run scoreboard players get helix _tmp1
