# helix:fs/resolve — Resolve path string to node index
# Input: helix:vm _arg1 = path | Output: helix _resolved_node score (-1 = not found)
scoreboard players set helix _resolved_node -1
data modify storage helix:fs _path set from storage helix:vm _arg1
execute store result score helix _path_len run data get storage helix:fs _path
execute if score helix _path_len matches ..0 run return 0
data modify storage helix:fs _first_char set string storage helix:fs _path 0 1
execute if data storage helix:fs {_first_char:"/"} run scoreboard players set helix _resolve_cur 0
execute unless data storage helix:fs {_first_char:"/"} run scoreboard players operation helix _resolve_cur = helix cwd
execute if data storage helix:fs {_path:"/"} run scoreboard players set helix _resolved_node 0
execute if data storage helix:fs {_path:"/"} run return 0
execute if data storage helix:fs {_path:"~"} run scoreboard players set helix _resolved_node 10
execute if data storage helix:fs {_path:"~"} run return 0
execute if data storage helix:fs {_path:"."} run scoreboard players operation helix _resolved_node = helix cwd
execute if data storage helix:fs {_path:"."} run return 0
execute if data storage helix:fs {_first_char:"/"} run data modify storage helix:fs _path set string storage helix:fs _path 1
data modify storage helix:fs _segments set value []
function helix:fs/split_path
function helix:fs/walk_segments
