# helix:fs/split_loop — Character-by-character path splitter
execute store result score helix _sp_len run data get storage helix:fs _path
execute if score helix _sp_len matches ..0 run return 0
data modify storage helix:fs _sp_ch set string storage helix:fs _path 0 1
execute if data storage helix:fs {_sp_ch:"/"} store result score helix _seg_check run data get storage helix:fs _sp_seg
execute if data storage helix:fs {_sp_ch:"/"} if score helix _seg_check matches 1.. run data modify storage helix:fs _segments append from storage helix:fs _sp_seg
execute if data storage helix:fs {_sp_ch:"/"} run data modify storage helix:fs _sp_seg set value ""
execute unless data storage helix:fs {_sp_ch:"/"} run function helix:fs/split_append with storage helix:fs
data modify storage helix:fs _path set string storage helix:fs _path 1
function helix:fs/split_loop
