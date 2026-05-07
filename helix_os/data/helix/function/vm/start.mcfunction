# helix:vm/start — Prepare VM for safe execution
scoreboard players set helix pc 0
scoreboard players set helix halted 0
scoreboard players set helix running 1
scoreboard players set helix waiting 0
scoreboard players set helix depth 0
scoreboard players set helix steps 0
scoreboard players set helix _batch 0
data modify storage helix:vm stack set value []
data modify storage helix:vm frames set value [{locals:{},ret:-1}]
data modify storage helix:vm error set value ""
scoreboard players add helix pid 1
