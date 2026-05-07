# helix:fs/split_path — Split _path on "/" into _segments array
execute store result score helix _sp_len run data get storage helix:fs _path
execute if score helix _sp_len matches ..0 run return 0
data modify storage helix:fs _sp_seg set value ""
function helix:fs/split_loop
execute store result score helix _seg_check run data get storage helix:fs _sp_seg
execute if score helix _seg_check matches 1.. run data modify storage helix:fs _segments append from storage helix:fs _sp_seg
