# helix:vm/op/arr_len_do — MACRO: get array length and push it
$execute store result score helix _result run data get storage helix:vm arrays[$(_arr_hidx)].items
data modify storage helix:vm stack append value {t:"int",n:0}
execute store result storage helix:vm stack[-1].n int 1 run scoreboard players get helix _result
