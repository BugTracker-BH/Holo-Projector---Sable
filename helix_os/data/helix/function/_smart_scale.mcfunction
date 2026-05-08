# helix:_smart_scale - Auto-scale: short=big, long=small (enables word-wrap for long text)
execute store result score helix _msg_len run data get storage holo:m msg
scoreboard players operation #FORCED_SCALE holo.v = helix _user_scale
execute if score #FORCED_SCALE holo.v matches 3 if score helix _msg_len matches 14.. run scoreboard players set #FORCED_SCALE holo.v 2
execute if score #FORCED_SCALE holo.v matches 2 if score helix _msg_len matches 30.. run scoreboard players set #FORCED_SCALE holo.v 1
