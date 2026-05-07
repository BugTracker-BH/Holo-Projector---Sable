# helix:compile/node/aug_assign — Compile augmented assignment (+=, -=, etc.)
data modify storage helix:vm _aug_save set from storage helix:vm _walk_node
# Load target value
execute store result storage helix:vm _widx int 1 run data get storage helix:vm _aug_save.target
function helix:compile/load_node with storage helix:vm
execute store result score helix _compile_idx run data get storage helix:vm _aug_save.target
function helix:compile/walk
# Compile RHS value
data modify storage helix:vm _walk_node set from storage helix:vm _aug_save
execute store result score helix _compile_idx run data get storage helix:vm _aug_save.val
function helix:compile/walk
# Emit the operator
data modify storage helix:vm _walk_node set from storage helix:vm _aug_save
execute if data storage helix:vm _aug_save{op:"+"} run data modify storage helix:vm code append value {op:"add"}
execute if data storage helix:vm _aug_save{op:"-"} run data modify storage helix:vm code append value {op:"sub"}
execute if data storage helix:vm _aug_save{op:"*"} run data modify storage helix:vm code append value {op:"mul"}
execute if data storage helix:vm _aug_save{op:"/"} run data modify storage helix:vm code append value {op:"div"}
execute if data storage helix:vm _aug_save{op:"%"} run data modify storage helix:vm code append value {op:"mod"}
scoreboard players add helix _code_len 1
# Store result back to target
execute store result storage helix:vm _widx int 1 run data get storage helix:vm _aug_save.target
function helix:compile/load_node with storage helix:vm
execute if data storage helix:vm _walk_node{kind:"ident"} run function helix:compile/node/assign_ident with storage helix:vm
execute if data storage helix:vm _walk_node{kind:"index"} run function helix:compile/node/assign_index
execute if data storage helix:vm _walk_node{kind:"member"} run function helix:compile/node/assign_member
