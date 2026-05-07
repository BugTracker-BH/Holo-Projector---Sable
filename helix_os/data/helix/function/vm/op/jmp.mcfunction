# helix:vm/op/jmp — MACRO: unconditional jump to addr
$scoreboard players set helix pc $(addr)
scoreboard players remove helix pc 1
