# helix:compile/node/let_emit — MACRO: emit store instruction for let variable
$data modify storage helix:vm code append value {op:"store",name:"$(name)"}
scoreboard players add helix _code_len 1
