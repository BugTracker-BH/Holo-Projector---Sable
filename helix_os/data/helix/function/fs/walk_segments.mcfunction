# helix:fs/walk_segments — Walk _segments array, resolving each against _resolve_cur
execute store result score helix _seg_count run data get storage helix:fs _segments
execute if score helix _seg_count matches ..0 run scoreboard players operation helix _resolved_node = helix _resolve_cur
execute if score helix _seg_count matches ..0 run return 0
data modify storage helix:fs _walk_seg set from storage helix:fs _segments[0]
data remove storage helix:fs _segments[0]
execute if data storage helix:fs {_walk_seg:".."} run function helix:fs/walk_parent
execute unless data storage helix:fs {_walk_seg:".."} run function helix:fs/walk_child
execute if score helix _resolve_cur matches -1 run scoreboard players set helix _resolved_node -1
execute if score helix _resolve_cur matches -1 run return 0
function helix:fs/walk_segments
