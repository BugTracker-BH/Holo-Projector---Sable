# helix:compile/node/call_fn_emit — MACRO: emit call instruction with function name and argc
$data modify storage helix:vm code append value {op:"call",name:"$(name)",argc:0}
execute store result storage helix:vm code[-1].argc int 1 run scoreboard players get helix _call_argc
scoreboard players add helix _code_len 1
