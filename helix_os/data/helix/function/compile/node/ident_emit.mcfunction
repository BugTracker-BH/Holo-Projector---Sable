# helix:compile/node/ident_emit — MACRO: emit load instruction for variable
$data modify storage helix:vm code append value {op:"load",name:"$(name)"}
scoreboard players add helix _code_len 1
