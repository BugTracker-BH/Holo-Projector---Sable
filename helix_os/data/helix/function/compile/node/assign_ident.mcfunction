# helix:compile/node/assign_ident — MACRO: emit store for variable name
$data modify storage helix:vm code append value {op:"store",name:"$(name)"}
scoreboard players add helix _code_len 1
