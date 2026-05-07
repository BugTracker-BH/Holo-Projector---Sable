# helix_term:boot/stage_helix — Render "Helix" in green
execute unless entity @e[tag=projector_pixel,limit=1] run return 0
execute unless score #LIVE_MODE holo.state matches 6 run return 0
playsound minecraft:block.bell.use master @a ~ ~ ~ 1 1.2
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.7 1.4
scoreboard players set #TEXT_COLOR holo.v -16711936
scoreboard players set #SILENT_ERROR holo.tmp 1
data modify storage holo:m msg set value "Helix"
function holo:text/render_from_storage
schedule function holo:text/welcome_transition 30t
schedule function helix_term:boot/stage_os 45t
