# helix:shell/do_split — Split at space index: _cmd = before space, _arg1 = after space
execute store result storage helix:vm _i int 1 run scoreboard players get helix _sp_idx
function helix:shell/do_split_cmd with storage helix:vm
scoreboard players operation helix _tmp1 = helix _sp_idx
scoreboard players add helix _tmp1 1
execute store result storage helix:vm _i int 1 run scoreboard players get helix _tmp1
function helix:shell/do_split_arg with storage helix:vm
