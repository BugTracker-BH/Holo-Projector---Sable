# helix:ctf/unlock_conf — conf_k3y unlocks containment parameters
data modify storage helix:ctf conf_unlocked set value 1
data modify storage helix:ctf conf_k3y_unlocked set value 1
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1.7
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.6 1.4
function helix:_show {msg:"CONTAINMENT PARAMS UNLOCKED",color:"LIME"}
tellraw @a [{"text":"[HELIX] ","color":"green"},{"text":"Hidden containment directory accessible. Check /etc/.containment/","color":"gray"}]
