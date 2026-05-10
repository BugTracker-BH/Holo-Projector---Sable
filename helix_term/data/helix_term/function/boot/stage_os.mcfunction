# helix_term:boot/stage_os — Render "OS" in green, then schedule final wipe and rainbow finale
execute unless entity @e[tag=projector_pixel,limit=1] run return 0
execute unless score #LIVE_MODE holo.state matches 6 run return 0
playsound minecraft:block.bell.use master @a ~ ~ ~ 1.2 1.5
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.8 1.8
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 0.5 1.4
scoreboard players set #TEXT_COLOR holo.v -16711936
scoreboard players set #SILENT_ERROR holo.tmp 1
scoreboard players set #FORCED_SCALE holo.v 4
data modify storage holo:m msg set value "OS"
function holo:text/render_from_storage
schedule function holo:text/welcome_transition 30t
schedule function helix_term:boot/finale 45t
