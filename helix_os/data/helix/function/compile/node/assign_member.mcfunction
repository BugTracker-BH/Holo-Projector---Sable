# helix:compile/node/assign_member — Compile struct member assignment: obj.field = val
data modify storage helix:vm _amem_save set from storage helix:vm _walk_node
execute store result score helix _compile_idx run data get storage helix:vm _amem_save.obj
function helix:compile/walk
function helix:compile/node/assign_member_emit with storage helix:vm
