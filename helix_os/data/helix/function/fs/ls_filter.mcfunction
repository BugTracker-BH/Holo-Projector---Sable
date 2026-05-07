# helix:fs/ls_filter - Skip hidden if not showing all, then append
execute if data storage helix:fs {_ls_node_hidden:1b} if score helix _ls_hidden matches 0 run return 0
execute store result score helix _ls_cur_len run data get storage helix:fs _ls_out
execute if score helix _ls_cur_len matches ..0 run function helix:fs/ls_append_first with storage helix:fs
execute if score helix _ls_cur_len matches 1.. run function helix:fs/ls_append_next with storage helix:fs
