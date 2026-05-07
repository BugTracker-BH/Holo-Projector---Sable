# helix:shell/find_space — Scan _dialog_input for first space character
execute if score helix _sp_idx >= helix _input_len run return 0
execute store result storage helix:vm _i int 1 run scoreboard players get helix _sp_idx
scoreboard players operation helix _tmp1 = helix _sp_idx
scoreboard players add helix _tmp1 1
execute store result storage helix:vm _j int 1 run scoreboard players get helix _tmp1
function helix:shell/find_space_slice with storage helix:vm
execute if data storage helix:vm {_sp_ch:" "} run function helix:shell/do_split
execute if data storage helix:vm {_sp_ch:" "} run return 0
scoreboard players add helix _sp_idx 1
return run function helix:shell/find_space
