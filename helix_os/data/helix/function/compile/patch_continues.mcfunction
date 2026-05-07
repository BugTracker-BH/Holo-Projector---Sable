# helix:compile/patch_continues — Patch all continue jumps to loop start
execute store result score helix _cont_count run data get storage helix:vm _continue_stack[-1]
execute if score helix _cont_count matches 0 run data remove storage helix:vm _continue_stack[-1]
execute if score helix _cont_count matches 0 run return 0
function helix:compile/patch_continues_loop
data remove storage helix:vm _continue_stack[-1]
