# helix:util/int_to_str — Convert integer on stack top to string representation
# Reads helix:vm stack[-1].n, stores result as {t:"str",v:"<digits>"} on stack top
execute store result score helix _tmp1 run data get storage helix:vm stack[-1].n
data remove storage helix:vm stack[-1]
execute store result storage helix:vm _itoa_val int 1 run scoreboard players get helix _tmp1
data modify storage helix:vm stack append value {t:"str",v:""}
function helix:util/int_to_str_do with storage helix:vm
