# helix_term:boot/stage_welcome — Render "Welcome", schedule wipe at 30t and next word at 45t
execute unless entity @e[tag=projector_pixel,limit=1] run return 0
execute unless score #LIVE_MODE holo.state matches 6 run return 0
playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 1 0.7
playsound minecraft:block.note_block.harp master @a ~ ~ ~ 0.6 0.8
scoreboard players set #TEXT_COLOR holo.v -16711681
scoreboard players set #SILENT_ERROR holo.tmp 1
data modify storage holo:m msg set value "Welcome"
function holo:text/render_from_storage
schedule function holo:text/welcome_transition 30t
schedule function helix_term:boot/stage_to 45t
