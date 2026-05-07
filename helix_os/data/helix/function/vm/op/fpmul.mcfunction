# helix:vm/op/fpmul — Fixed-point multiply: (a * b) / 1000
execute store result score helix _a run data get storage helix:vm stack[-1].n
data remove storage helix:vm stack[-1]
execute store result score helix _b run data get storage helix:vm stack[-1].n
scoreboard players operation helix _b *= helix _a
scoreboard players operation helix _b /= helix fp_scale
execute store result storage helix:vm stack[-1].n int 1 run scoreboard players get helix _b
