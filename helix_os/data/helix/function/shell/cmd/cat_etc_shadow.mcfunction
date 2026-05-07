execute if data storage helix:shell {current_user:"root"} run function helix:shell/cmd/cat_etc_shadow_show
execute unless data storage helix:shell {current_user:"root"} run function helix:shell/cmd/cat_etc_shadow_denied
