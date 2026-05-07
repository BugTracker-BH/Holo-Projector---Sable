# helix:shell/cmd/unlock_fail — Wrong key
playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 0.8
playsound minecraft:block.anvil.land master @a ~ ~ ~ 0.3 1.5
function helix:_show {msg:"INVALID KEY",color:"RED"}
tellraw @a [{"text":"[HELIX] ","color":"red"},{"text":"Unlock attempt logged. Key rejected.","color":"gray"}]
