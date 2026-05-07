# helix:ctf/hard/pass — Stage 3 FINAL complete! SABLE contained permanently
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 0.8
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 0.8 0.8
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1
function helix:_show {msg:"SABLE VAULT BREACHED!",color:"LIGHT_PURPLE"}
execute if score helix_term enabled matches 1 run function helix_term:bridge/ctf_hard_win
tellraw @a [{"text":"\n"},{"text":"========================================","color":"gold"}]
tellraw @a [{"text":"[CTF] ","color":"gold","bold":true},{"text":"ALL STAGES COMPLETE!","color":"light_purple","bold":true}]
tellraw @a [{"text":"========================================","color":"gold"}]
tellraw @a [{"text":"  Stage 1: ","color":"green"},{"text":"RECON ","color":"green","bold":true},{"text":"- Found anomaly key in auth logs","color":"gray"}]
tellraw @a [{"text":"  Stage 2: ","color":"aqua"},{"text":"CRYPTO ","color":"aqua","bold":true},{"text":"- Decoded Vigenere directive","color":"gray"}]
tellraw @a [{"text":"  Stage 3: ","color":"light_purple"},{"text":"EXPLOIT ","color":"light_purple","bold":true},{"text":"- Cracked LCG vault sequence","color":"gray"}]
tellraw @a [{"text":"========================================","color":"gold"}]
tellraw @a [{"text":"  SABLE has been permanently contained.","color":"white","bold":true}]
tellraw @a [{"text":"  The rogue AI threat is neutralized.","color":"gray"}]
tellraw @a [{"text":"========================================","color":"gold"}]
