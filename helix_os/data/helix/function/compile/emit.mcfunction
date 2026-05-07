# helix:compile/emit — MACRO: append a bytecode instruction to the code array
$data modify storage helix:vm code append value $(instr)
scoreboard players add helix _code_len 1
