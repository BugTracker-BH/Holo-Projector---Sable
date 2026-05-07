# helix:compile/node/member_emit — MACRO: emit get_field instruction
$data modify storage helix:vm code append value {op:"get_field",name:"$(field)"}
scoreboard players add helix _code_len 1
