# helix:compile/node/assign_member_emit — MACRO: emit set_field instruction
$data modify storage helix:vm code append value {op:"set_field",name:"$(field)"}
scoreboard players add helix _code_len 1
