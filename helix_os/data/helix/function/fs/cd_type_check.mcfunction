$execute if data storage helix:fs nodes[$(_cd_i)]{type:"dir"} run scoreboard players operation helix cwd = helix _resolved_node
$execute if data storage helix:fs nodes[$(_cd_i)]{type:"dir"} run function helix:fs/build_cwd_path
$execute if data storage helix:fs nodes[$(_cd_i)]{type:"dir"} run function helix:shell/cmd/cd_ok with storage helix:shell
$execute unless data storage helix:fs nodes[$(_cd_i)]{type:"dir"} run function helix:_show {msg:"not a directory",color:"RED"}
