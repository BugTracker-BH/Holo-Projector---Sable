# helix:_smart_scale - Set render scale based on message length
execute store result score helix _msg_len run data get storage helix:shell _show_msg
scoreboard players operation #FORCED_SCALE holo.v = helix _user_scale
execute if score #FORCED_SCALE holo.v matches 3 if score helix _msg_len matches 15.. run scoreboard players set #FORCED_SCALE holo.v 2
execute if score #FORCED_SCALE holo.v matches 2 if score helix _msg_len matches 41.. run scoreboard players set #FORCED_SCALE holo.v 1
