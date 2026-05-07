# helix:vm/op/fpdiv — Fixed-point divide: (a * 1000) / b
execute store result score helix _a run data get storage helix:vm stack[-1].n
execute if score helix _a matches 0 run function helix:vm/error/division_by_zero
execute if score helix halted matches 1 run return 0
data remove storage helix:vm stack[-1]
execute store result score helix _b run data get storage helix:vm stack[-1].n
scoreboard players operation helix _b *= helix fp_scale
scoreboard players operation helix _b /= helix _a
execute store result storage helix:vm stack[-1].n int 1 run scoreboard players get helix _b
