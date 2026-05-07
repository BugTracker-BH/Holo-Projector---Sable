# helix:vm/builtin/min — Pop two ints, push the smaller
execute store result score helix _a run data get storage helix:vm stack[-1].n
data remove storage helix:vm stack[-1]
execute store result score helix _b run data get storage helix:vm stack[-1].n
execute if score helix _a < helix _b run scoreboard players operation helix _b = helix _a
execute store result storage helix:vm stack[-1].n int 1 run scoreboard players get helix _b
