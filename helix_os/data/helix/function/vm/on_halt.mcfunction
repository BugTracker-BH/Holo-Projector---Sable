# helix:vm/on_halt — Program finished, display output on holo projector
scoreboard players set helix running 0
execute store result score helix _err_len run data get storage helix:vm error
execute if score helix _err_len matches 1.. run function helix:vm/show_error with storage helix:vm
execute if score helix _err_len matches 1.. run return 0
tellraw @a [{"text":"[HELIX] ","color":"aqua"},{"text":"Program finished.","color":"gray"}]
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.5 1.5
