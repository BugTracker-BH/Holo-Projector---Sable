$data modify storage helix:fs _ls_node_hidden set from storage helix:fs nodes[$(_ls_ni)].hidden
$data modify storage helix:fs _ls_node_name set from storage helix:fs nodes[$(_ls_ni)].name
execute if data storage helix:fs {_ls_node_hidden:1b} if score helix _ls_hidden matches 0 run return 0
function helix:fs/ls_append with storage helix:fs
