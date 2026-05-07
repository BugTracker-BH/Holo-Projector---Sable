# cat_auth_log — Show auth log. Only visible after unlocking with sys_r3ad.
execute if data storage helix:ctf {stage1_proven:1} run function helix:shell/cmd/cat_auth_log_show
execute unless data storage helix:ctf {stage1_proven:1} run function helix:shell/cmd/cat_auth_log_locked
