# helix:vm/op/jmp_if_false — MACRO: jump to addr if top of stack is zero
execute store result score helix _cond run data get storage helix:vm stack[-1].n
data remove storage helix:vm stack[-1]
$execute if score helix _cond matches 0 run scoreboard players set helix pc $(addr)
execute if score helix _cond matches 0 run scoreboard players remove helix pc 1
