# holo:art/stop — Stop any running pixel-art animation and clear the projector
scoreboard players set #ART_ID holo.state 0
schedule clear holo:art/galaxy/tick
schedule clear holo:art/snowy_valley/tick
schedule clear holo:art/ocean_sunset/tick
schedule clear holo:art/city_skyline/tick
schedule clear holo:art/cherry_blossom/tick
execute if entity @e[tag=projector_pixel,limit=1] run execute as @e[tag=projector_pixel] run data modify entity @s background set value -16777216
