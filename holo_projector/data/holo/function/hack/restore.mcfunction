# holo:hack/restore — End of hack: clear, restore last shell display, re-arm scheduler
execute as @e[tag=projector_pixel] run data modify entity @s background set value -16777216
scoreboard players set helix hack_active 0
scoreboard players set helix hack_state 0

# Restore the last text/colour the user had on screen (only if non-empty)
execute store result score #SM_LEN holo.tmp run data get storage helix:hack saved_msg
execute if score #SM_LEN holo.tmp matches 1.. run function holo:hack/restore_show with storage helix:hack

# Re-arm next hack 5-10 minutes later
execute store result score helix hack_timer run random value 6000..12000
function holo:hack/scheduler
tellraw @a [{"text":"[HELIX] ","color":"dark_green","bold":true},{"text":"Containment restored. Threat repelled.","color":"gray"}]
