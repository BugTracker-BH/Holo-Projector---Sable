# helix:vault/denied — gate failed: at least one CTF stage unsolved
function holo:text/clear
function holo:text/set_scale {scale:0}
function holo:text/set_color {color:"RED"}
function holo:text/display {msg:"ACCESS DENIED solve CTF first"}
playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 0.7
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 0.6 0.5
playsound minecraft:block.anvil.land master @a ~ ~ ~ 0.3 1.4
tellraw @a [{"text":"[VAULT] ","color":"red","bold":true},{"text":"Vault locked. Stages 1, 2, and 3 must all be solved.","color":"gray"}]
