# helix:fs/cat_validate - Non-macro: check type/perms/lock then display
execute if data storage helix:fs {_cat_type:"dir"} run function helix:_show {msg:"is a directory use ls",color:"YELLOW"}
execute if data storage helix:fs {_cat_type:"dir"} run return 0
execute if data storage helix:fs {_cat_perm:"---"} unless data storage helix:shell {current_user:"root"} run function helix:_show {msg:"permission denied",color:"RED"}
execute if data storage helix:fs {_cat_perm:"---"} unless data storage helix:shell {current_user:"root"} run return 0
execute store result score helix _has_lock run data get storage helix:fs _cat_unlock
execute if score helix _has_lock matches 1.. run function helix:fs/cat_locked
execute if score helix _has_lock matches 1.. run return 0
function helix:fs/cat_read_content with storage helix:fs
