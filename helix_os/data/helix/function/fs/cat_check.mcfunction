$data modify storage helix:fs _cat_type set from storage helix:fs nodes[$(_ci)].type
$data modify storage helix:fs _cat_perm set from storage helix:fs nodes[$(_ci)].perm
$data modify storage helix:fs _cat_unlock set from storage helix:fs nodes[$(_ci)].unlock_key
execute if data storage helix:fs {_cat_type:"dir"} run function helix:_show {msg:"is a directory use ls",color:"YELLOW"}
execute if data storage helix:fs {_cat_type:"dir"} run return 0
execute if data storage helix:fs {_cat_perm:"---"} unless data storage helix:shell {current_user:"root"} run function helix:_show {msg:"permission denied",color:"RED"}
execute if data storage helix:fs {_cat_perm:"---"} unless data storage helix:shell {current_user:"root"} run return 0
execute store result score helix _has_lock run data get storage helix:fs _cat_unlock
execute if score helix _has_lock matches 1.. run function helix:fs/cat_locked with storage helix:fs
execute if score helix _has_lock matches 1.. run return 0
$data modify storage helix:fs _cat_content set from storage helix:fs nodes[$(_ci)].content
function helix:fs/cat_display with storage helix:fs
