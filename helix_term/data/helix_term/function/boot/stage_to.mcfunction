# helix_term:boot/stage_to — Render "to"
execute unless entity @e[tag=projector_pixel,limit=1] run return 0
execute unless score #LIVE_MODE holo.state matches 6 run return 0
playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 1 0.85
playsound minecraft:block.note_block.harp master @a ~ ~ ~ 0.6 1.0
scoreboard players set #TEXT_COLOR holo.v -16711681
scoreboard players set #SILENT_ERROR holo.tmp 1
data modify storage holo:m msg set value "to"
function holo:text/render_from_storage
schedule function holo:text/welcome_transition 30t
schedule function helix_term:boot/stage_the 45t
