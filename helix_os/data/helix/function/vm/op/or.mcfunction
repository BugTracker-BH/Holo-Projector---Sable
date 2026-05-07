# helix:vm/op/or — Logical OR: pop two, push 1 if either nonzero
execute store result score helix _a run data get storage helix:vm stack[-1].n
data remove storage helix:vm stack[-1]
execute store result score helix _b run data get storage helix:vm stack[-1].n
scoreboard players set helix _result 0
execute unless score helix _a matches 0 run scoreboard players set helix _result 1
execute unless score helix _b matches 0 run scoreboard players set helix _result 1
execute store result storage helix:vm stack[-1].n int 1 run scoreboard players get helix _result
data modify storage helix:vm stack[-1].t set value "int"
