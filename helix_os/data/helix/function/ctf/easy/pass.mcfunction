# helix:ctf/easy/pass — Stage 1 complete! Reveal flag and celebrate
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.0
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1.2
function helix:_show {msg:"STAGE 1 COMPLETE!",color:"LIME"}
execute if score helix_term enabled matches 1 run function helix_term:bridge/ctf_easy_win
tellraw @a [{"text":"[CTF] ","color":"gold","bold":true},{"text":"STAGE 1: RECON COMPLETE ","color":"green"},{"text":"| The AI logged its own key. Now decode its encrypted directive.","color":"gray"}]
tellraw @a [{"text":"[HINT] ","color":"yellow"},{"text":"Use 'unlock conf_k3y' to access /etc/.containment/ then decode the Vigenere cipher.","color":"gray"}]
