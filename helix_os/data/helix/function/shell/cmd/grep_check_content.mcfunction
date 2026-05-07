# helix:shell/cmd/grep_check_content - MACRO: load node data
$data modify storage helix:fs _grep_content set from storage helix:fs nodes[$(_gi)].content
$data modify storage helix:fs _grep_node_name set from storage helix:fs nodes[$(_gi)].name
$data modify storage helix:fs _grep_type set from storage helix:fs nodes[$(_gi)].type
