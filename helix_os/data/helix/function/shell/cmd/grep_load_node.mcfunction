data modify storage helix:shell _grep_content set value ""
data modify storage helix:shell _grep_node_name set value ""
$data modify storage helix:shell _grep_content set from storage helix:fs nodes[$(_grep_node_idx)].content
$data modify storage helix:shell _grep_node_name set from storage helix:fs nodes[$(_grep_node_idx)].name
