# helix:_smart_scale - Auto-scale: force scale 1 for anything over 14 chars (single line always)
execute store result score helix _msg_len run data get storage holo:m msg
scoreboard players set #FORCED_SCALE holo.v 3
execute if score helix _msg_len matches 8.. run scoreboard players set #FORCED_SCALE holo.v 2
execute if score helix _msg_len matches 14.. run scoreboard players set #FORCED_SCALE holo.v 1
