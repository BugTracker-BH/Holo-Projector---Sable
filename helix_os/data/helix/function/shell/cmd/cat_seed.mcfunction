# cat_seed — LCG seed file (unlocked after conf_k3y)
execute if data storage helix:ctf {conf_unlocked:1} run function helix:shell/cmd/cat_seed_show
execute unless data storage helix:ctf {conf_unlocked:1} run function helix:shell/cmd/cat_seed_locked
