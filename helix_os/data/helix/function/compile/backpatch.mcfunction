# helix:compile/backpatch — Patch the address at the top of _patch_stack with current code_len
execute store result storage helix:vm _addr int 1 run data get storage helix:vm _patch_stack[-1]
data remove storage helix:vm _patch_stack[-1]
execute store result storage helix:vm _target int 1 run scoreboard players get helix _code_len
function helix:compile/patch with storage helix:vm
