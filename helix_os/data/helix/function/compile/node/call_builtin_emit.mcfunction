# helix:compile/node/call_builtin_emit — MACRO: emit builtin instruction
$data modify storage helix:vm code append value {op:"builtin",name:"$(name)"}
scoreboard players add helix _code_len 1
