execute unless data storage helix:ctf {solved_medium:1} run function helix:_show {msg:"complete stage 2 first", color:"RED"}
execute if data storage helix:ctf {solved_medium:1} if data storage helix:ctf {vault_proven:1} run function helix:ctf/hard/pass
execute if data storage helix:ctf {solved_medium:1} unless data storage helix:ctf {vault_proven:1} run function helix:_show {msg:"compute and submit the vault key first", color:"RED"}
