# helix:vm/op/lt — Pop two, push 1 if b < a
execute store result score helix _a run data get storage helix:vm stack[-1].n
data remove storage helix:vm stack[-1]
execute store result score helix _b run data get storage helix:vm stack[-1].n
scoreboard players set helix _result 0
execute if score helix _b < helix _a run scoreboard players set helix _result 1
execute store result storage helix:vm stack[-1].n int 1 run scoreboard players get helix _result
data modify storage helix:vm stack[-1].t set value "int"
