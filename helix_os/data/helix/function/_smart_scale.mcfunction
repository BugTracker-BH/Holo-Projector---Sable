# helix:_smart_scale - Only force scale for very short messages, let auto handle the rest
execute store result score helix _msg_len run data get storage holo:m msg
scoreboard players set #FORCED_SCALE holo.v 0
execute if score helix _msg_len matches ..6 run scoreboard players set #FORCED_SCALE holo.v 3
execute if score helix _msg_len matches 7..10 run scoreboard players set #FORCED_SCALE holo.v 2
