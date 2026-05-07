# helix:compile/patch_continues_loop — Patch each continue address to _loop_start
execute store result score helix _ccount run data get storage helix:vm _continue_stack[-1]
execute if score helix _ccount matches 0 run return 0
execute store result storage helix:vm _addr int 1 run data get storage helix:vm _continue_stack[-1][-1]
data remove storage helix:vm _continue_stack[-1][-1]
execute store result storage helix:vm _target int 1 run scoreboard players get helix _loop_start
function helix:compile/patch with storage helix:vm
return run function helix:compile/patch_continues_loop
