# helix:vm/builtin/str_len_const_do — MACRO: get string length from consts
$execute store result score helix _tmp1 run data get storage helix:vm consts[$(_sidx_m)]
data modify storage helix:vm stack append value {t:"int",n:0}
execute store result storage helix:vm stack[-1].n int 1 run scoreboard players get helix _tmp1
