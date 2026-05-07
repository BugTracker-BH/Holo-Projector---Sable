# helix:compile/node/break — Compile break: emit jmp(0) and record for backpatching
data modify storage helix:vm code append value {op:"jmp",addr:0}
data modify storage helix:vm _break_stack[-1] append value 0
execute store result storage helix:vm _break_stack[-1][-1] int 1 run scoreboard players get helix _code_len
scoreboard players add helix _code_len 1
