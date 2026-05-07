# helix:compile/node/call_args_loop — Iterate over call args and compile each
execute if score helix _call_argi >= helix _call_argc run return 0
execute store result storage helix:vm _ai int 1 run scoreboard players get helix _call_argi
function helix:compile/node/get_call_arg with storage helix:vm
execute store result score helix _compile_idx run data get storage helix:vm _arg_ref
function helix:compile/walk
data modify storage helix:vm _walk_node set from storage helix:vm _call_save
scoreboard players add helix _call_argi 1
return run function helix:compile/node/call_args_loop
