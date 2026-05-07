# helix:vm/builtin/abs — Pop int, push absolute value
execute store result score helix _a run data get storage helix:vm stack[-1].n
execute if score helix _a matches ..-1 run scoreboard players operation helix _a *= helix neg1
execute store result storage helix:vm stack[-1].n int 1 run scoreboard players get helix _a
