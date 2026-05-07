# helix:compile/node/return — Compile return statement: compile value, emit ret
execute store result score helix _ret_val_idx run data get storage helix:vm _walk_node.val
execute if score helix _ret_val_idx matches -1 run data modify storage helix:vm code append value {op:"push_null"}
execute if score helix _ret_val_idx matches -1 run scoreboard players add helix _code_len 1
execute unless score helix _ret_val_idx matches -1 run scoreboard players operation helix _compile_idx = helix _ret_val_idx
execute unless score helix _ret_val_idx matches -1 run function helix:compile/walk
data modify storage helix:vm code append value {op:"ret"}
scoreboard players add helix _code_len 1
