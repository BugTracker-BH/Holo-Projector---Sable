# helix:compile/node/unary — Compile unary operation: compile operand, emit neg or not
data modify storage helix:vm _unary_save set from storage helix:vm _walk_node
execute store result score helix _compile_idx run data get storage helix:vm _unary_save.val
function helix:compile/walk
execute if data storage helix:vm _unary_save{op:"-"} run data modify storage helix:vm code append value {op:"neg"}
execute if data storage helix:vm _unary_save{op:"!"} run data modify storage helix:vm code append value {op:"not"}
scoreboard players add helix _code_len 1
