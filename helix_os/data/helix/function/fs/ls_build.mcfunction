# helix:fs/ls_build — Build pipe-separated listing of _resolved_node children
data modify storage helix:fs _ls_out set value ""
execute store result storage helix:fs _lsi int 1 run scoreboard players get helix _resolved_node
function helix:fs/ls_get_node_children with storage helix:fs
execute store result score helix _ls_count run data get storage helix:fs _ls_children
scoreboard players set helix _ls_i 0
function helix:fs/ls_loop
