# helix:vm/builtin/int_to_str — Pop int, push its string representation
execute store result score helix _tmp1 run data get storage helix:vm stack[-1].n
data remove storage helix:vm stack[-1]
execute store result storage helix:vm _itoa_val int 1 run scoreboard players get helix _tmp1
data modify storage helix:vm stack append value {t:"str",v:"0"}
function helix:vm/builtin/int_to_str_write with storage helix:vm
