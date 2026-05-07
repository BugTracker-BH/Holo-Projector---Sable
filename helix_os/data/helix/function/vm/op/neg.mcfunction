# helix:vm/op/neg — Negate top of stack
execute store result score helix _a run data get storage helix:vm stack[-1].n
scoreboard players operation helix _a *= helix neg1
execute store result storage helix:vm stack[-1].n int 1 run scoreboard players get helix _a
