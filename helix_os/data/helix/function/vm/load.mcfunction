# helix:vm/load — Initialize VM state
data modify storage helix:vm code set value []
data modify storage helix:vm stack set value []
data modify storage helix:vm globals set value {}
data modify storage helix:vm frames set value []
data modify storage helix:vm consts set value []
data modify storage helix:vm fn_table set value {}
data modify storage helix:vm error set value ""
data modify storage helix:vm output set value ""
data modify storage helix:vm _last_printed set value ""
data modify storage helix:vm _last_type set value ""
function helix:vm/init_objectives
scoreboard players set helix pc 0
scoreboard players set helix halted 1
scoreboard players set helix running 0
scoreboard players set helix waiting 0
scoreboard players set helix steps 0
scoreboard players set helix depth 0
scoreboard players set helix _batch 0
scoreboard players set helix _max_batch 128
scoreboard players set helix _max_depth 32
