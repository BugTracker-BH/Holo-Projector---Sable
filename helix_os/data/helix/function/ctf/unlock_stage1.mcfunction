# helix:ctf/unlock_stage1 — sys_r3ad unlocks the auth log
data modify storage helix:ctf stage1_proven set value 1
data modify storage helix:ctf sys_r3ad_unlocked set value 1
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.6 1.2
function helix:_show {msg:"AUTH LOG UNLOCKED",color:"LIME"}
tellraw @a [{"text":"[HELIX] ","color":"green"},{"text":"Audit log access granted. Check /var/log/auth.log","color":"gray"}]
