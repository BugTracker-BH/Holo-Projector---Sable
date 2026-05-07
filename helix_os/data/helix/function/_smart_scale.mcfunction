# helix:_smart_scale — Decide actual render scale from user's preference and current message length.
# Scale 3 requires <=14 chars to fit; scale 2 requires <=40 chars; otherwise drop to scale 1.
execute store result score helix _msg_len run data get storage helix:shell msg
scoreboard players operation #FORCED_SCALE holo.v = helix _user_scale
execute if score #FORCED_SCALE holo.v matches 3 if score helix _msg_len matches 15.. run scoreboard players set #FORCED_SCALE holo.v 2
execute if score #FORCED_SCALE holo.v matches 2 if score helix _msg_len matches 41.. run scoreboard players set #FORCED_SCALE holo.v 1
