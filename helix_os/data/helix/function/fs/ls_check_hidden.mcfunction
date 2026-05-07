# helix:fs/ls_check_hidden - MACRO: load node data then filter
$data modify storage helix:fs _ls_node_hidden set from storage helix:fs nodes[$(_ls_ni)].hidden
$data modify storage helix:fs _ls_node_name set from storage helix:fs nodes[$(_ls_ni)].name
