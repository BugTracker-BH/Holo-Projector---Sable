# helix:vm/op/call — MACRO: function call with depth guard
execute if score helix depth >= helix _max_depth run data modify storage helix:vm error set value "stack overflow: max call depth"
execute if score helix depth >= helix _max_depth run scoreboard players set helix halted 1
execute if score helix depth >= helix _max_depth run return 0
$data modify storage helix:vm _call_name set value "$(name)"
$scoreboard players set helix _call_argc $(argc)
data modify storage helix:vm frames append value {locals:{},ret:-1}
execute store result storage helix:vm frames[-1].ret int 1 run scoreboard players get helix pc
$execute store result score helix _fn_entry run data get storage helix:vm fn_table.$(name)
function helix:vm/op/call_bind_args
scoreboard players operation helix pc = helix _fn_entry
scoreboard players remove helix pc 1
scoreboard players add helix depth 1
