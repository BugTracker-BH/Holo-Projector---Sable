# helix:compile/patch_breaks_loop — Patch each break address
execute store result score helix _bcount run data get storage helix:vm _break_stack[-1]
execute if score helix _bcount matches 0 run return 0
execute store result storage helix:vm _addr int 1 run data get storage helix:vm _break_stack[-1][-1]
data remove storage helix:vm _break_stack[-1][-1]
execute store result storage helix:vm _target int 1 run scoreboard players get helix _code_len
function helix:compile/patch with storage helix:vm
return run function helix:compile/patch_breaks_loop
