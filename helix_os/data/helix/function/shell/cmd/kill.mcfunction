# helix:shell/cmd/kill — Halt running VM
scoreboard players set helix halted 1
scoreboard players set helix running 0
playsound minecraft:entity.generic.death master @a ~ ~ ~ 0.5 1.5
function helix:_show {msg:"process terminated",color:"RED"}
