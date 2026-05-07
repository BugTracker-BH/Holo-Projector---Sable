data modify storage helix:shell current_user set value "root"
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.0
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.5 1.4
function helix:_show {msg:"login successful user root", color:"LIME"}
