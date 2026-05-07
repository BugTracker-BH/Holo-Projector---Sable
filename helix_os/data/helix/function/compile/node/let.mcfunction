# helix:compile/node/let — Compile let statement: compile value, emit store
execute store result score helix _compile_idx run data get storage helix:vm _walk_node.val
function helix:compile/walk
function helix:compile/node/let_emit with storage helix:vm
