$data modify storage helix:fs _grep_content set from storage helix:fs nodes[$(_gi)].content
$data modify storage helix:fs _grep_node_name set from storage helix:fs nodes[$(_gi)].name
$data modify storage helix:fs _grep_type set from storage helix:fs nodes[$(_gi)].type
execute unless data storage helix:fs {_grep_type:"file"} run return 0
execute store result score helix _gc_len run data get storage helix:fs _grep_content
execute if score helix _gc_len matches ..0 run return 0
function helix:shell/cmd/grep_do_match with storage helix:fs
