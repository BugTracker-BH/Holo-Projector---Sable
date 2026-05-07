# helix:compile/node/assign — Compile assignment: compile value, emit store to target
data modify storage helix:vm _assign_save set from storage helix:vm _walk_node
execute store result score helix _compile_idx run data get storage helix:vm _assign_save.val
function helix:compile/walk
# Determine target type and emit appropriate store
data modify storage helix:vm _walk_node set from storage helix:vm _assign_save
execute store result storage helix:vm _widx int 1 run data get storage helix:vm _assign_save.target
function helix:compile/load_node with storage helix:vm
# Simple variable assignment
execute if data storage helix:vm _walk_node{kind:"ident"} run function helix:compile/node/assign_ident with storage helix:vm
# Array index assignment
execute if data storage helix:vm _walk_node{kind:"index"} run function helix:compile/node/assign_index
# Member assignment
execute if data storage helix:vm _walk_node{kind:"member"} run function helix:compile/node/assign_member
