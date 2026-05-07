# helix:compile/node/const — Compile const statement (same as let at runtime)
execute store result score helix _compile_idx run data get storage helix:vm _walk_node.val
function helix:compile/walk
function helix:compile/node/let_emit with storage helix:vm
