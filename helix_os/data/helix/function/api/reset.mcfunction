# helix:api/reset — Reset VM state for a fresh execution
function helix:vm/init_objectives
scoreboard players set helix pc 0
scoreboard players set helix halted 1
scoreboard players set helix running 0
scoreboard players set helix waiting 0
scoreboard players set helix depth 0
scoreboard players set helix steps 0
scoreboard players set helix heap_next 0
data modify storage helix:vm stack set value []
data modify storage helix:vm frames set value [{locals:{},ret_addr:-1}]
data modify storage helix:vm arrays set value []
data modify storage helix:vm structs set value []
data modify storage helix:vm error set value ""
data modify storage helix:vm tokens set value []
data modify storage helix:vm ast_heap set value []
data modify storage helix:vm code set value []
data modify storage helix:vm consts set value []
data modify storage helix:vm fn_table set value {}
