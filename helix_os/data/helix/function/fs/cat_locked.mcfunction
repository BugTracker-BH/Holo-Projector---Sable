# helix:fs/cat_locked - Check if the unlock key has been used
# Called with storage helix:fs which contains _cat_unlock and _ci
execute if data storage helix:fs {_cat_unlock:"sys_r3ad"} if data storage helix:ctf {sys_r3ad_unlocked:1} run function helix:fs/cat_unlocked with storage helix:fs
execute if data storage helix:fs {_cat_unlock:"sys_r3ad"} unless data storage helix:ctf {sys_r3ad_unlocked:1} run function helix:_show {msg:"locked - use: unlock sys_r3ad",color:"RED"}
execute if data storage helix:fs {_cat_unlock:"conf_k3y"} if data storage helix:ctf {conf_k3y_unlocked:1} run function helix:fs/cat_unlocked with storage helix:fs
execute if data storage helix:fs {_cat_unlock:"conf_k3y"} unless data storage helix:ctf {conf_k3y_unlocked:1} run function helix:_show {msg:"locked - use: unlock conf_k3y",color:"RED"}
execute if data storage helix:fs {_cat_unlock:"vault_master"} run function helix:_show {msg:"permission denied",color:"RED"}
