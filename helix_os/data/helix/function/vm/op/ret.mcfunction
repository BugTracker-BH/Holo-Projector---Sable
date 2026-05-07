# helix:vm/op/ret — Return from function: pop frame, restore PC
execute store result score helix pc run data get storage helix:vm frames[-1].ret
data remove storage helix:vm frames[-1]
scoreboard players remove helix pc 1
scoreboard players remove helix depth 1
