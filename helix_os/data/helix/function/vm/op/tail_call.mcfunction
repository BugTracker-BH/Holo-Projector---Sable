# helix:vm/op/tail_call — MACRO: tail call optimization - reuse current frame
$data modify storage helix:vm _call_name set value "$(name)"
$scoreboard players set helix _call_argc $(argc)
$execute store result score helix _fn_entry run data get storage helix:vm fn_table.$(name)
# Clear current frame locals but keep ret_addr
data modify storage helix:vm frames[-1].locals set value {}
# Bind args into current frame
function helix:vm/op/call_bind_args
# Jump to function entry
scoreboard players operation helix pc = helix _fn_entry
scoreboard players remove helix pc 1
