# helix:compile/patch_breaks — Patch all break jumps in current scope to current code_len
execute store result score helix _break_count run data get storage helix:vm _break_stack[-1]
execute if score helix _break_count matches 0 run data remove storage helix:vm _break_stack[-1]
execute if score helix _break_count matches 0 run return 0
function helix:compile/patch_breaks_loop
data remove storage helix:vm _break_stack[-1]
