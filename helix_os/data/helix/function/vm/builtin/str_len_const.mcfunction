# helix:vm/builtin/str_len_const — Get length of string from consts array
execute store result score helix _sidx run data get storage helix:vm stack[-1].idx
data remove storage helix:vm stack[-1]
execute store result storage helix:vm _sidx_m int 1 run scoreboard players get helix _sidx
function helix:vm/builtin/str_len_const_do with storage helix:vm
