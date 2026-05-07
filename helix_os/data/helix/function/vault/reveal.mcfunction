# helix:vault/reveal — display decoded password on projector with epic sound
function holo:text/clear
function holo:text/set_scale {scale:0}
function holo:text/set_color {color:"GREEN"}
function helix:vault/display_buf with storage helix:vault
playsound minecraft:item.totem.use master @a ~ ~ ~ 1 1.2
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.4
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.6
tellraw @a [{"text":"[VAULT] ","color":"gold","bold":true},{"text":"Root password recovered: ","color":"gray"},{"storage":"helix:vault","nbt":"buf","color":"green","bold":true,"interpret":false}]
