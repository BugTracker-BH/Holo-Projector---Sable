# holo:hack/intro_text — render "YOU HAVE BEEN HACKED" centered red
execute as @e[tag=projector_pixel] run data modify entity @s background set value -16777216
scoreboard players set #TEXT_COLOR holo.v -65536
scoreboard players set #SILENT_ERROR holo.tmp 1
scoreboard players set #FORCED_SCALE holo.v 2
data modify storage holo:m msg set value "YOU HAVE BEEN HACKED"
function holo:text/render_from_storage
playsound minecraft:entity.warden.death master @a ~ ~ ~ 1.0 0.6
