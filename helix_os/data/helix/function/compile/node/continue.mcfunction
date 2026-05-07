# helix:compile/node/continue — Compile continue: emit jmp(0) for later backpatching
data modify storage helix:vm code append value {op:"jmp",addr:0}
data modify storage helix:vm _continue_stack[-1] append value 0
execute store result storage helix:vm _continue_stack[-1][-1] int 1 run scoreboard players get helix _code_len
scoreboard players add helix _code_len 1
