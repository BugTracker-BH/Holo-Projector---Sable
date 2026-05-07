# helix:ctf/medium/pass — Stage 2 complete!
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.0
playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 1 1.0
function helix:_show {msg:"STAGE 2 COMPLETE!",color:"AQUA"}
execute if score helix_term enabled matches 1 run function helix_term:bridge/ctf_medium_win
tellraw @a [{"text":"[CTF] ","color":"gold","bold":true},{"text":"STAGE 2: CRYPTO COMPLETE ","color":"aqua"},{"text":"| SABLE directive decoded: TERMINATE SABLE. Now breach the vault.","color":"gray"}]
tellraw @a [{"text":"[HINT] ","color":"yellow"},{"text":"Read /home/sable/research/lcg_notes.txt and /etc/.containment/vault_params.dat. Compute the LCG sequence.","color":"gray"}]
