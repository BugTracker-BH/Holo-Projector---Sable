# helix:vm2/digit_loop — accumulate digits into _eval_val
function helix:vm2/peek
function helix:vm2/digit_value
execute if score helix _digit matches -1 run return 0
scoreboard players operation helix _eval_val *= helix k10
scoreboard players operation helix _eval_val += helix _digit
scoreboard players add helix _pos 1
return run function helix:vm2/digit_loop
