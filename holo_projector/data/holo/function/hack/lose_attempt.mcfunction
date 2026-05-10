# holo:hack/lose_attempt — player lost a life; flash, then either restart or final lose
scoreboard players remove helix hack_lives 1
execute if score helix hack_lives matches ..0 run function holo:hack/lose
execute if score helix hack_lives matches ..0 run return 0
# Pause game loop during flash
scoreboard players set helix hack_state 3
schedule clear holo:hack/timer_tick
playsound minecraft:entity.player.hurt master @a ~ ~ ~ 1.0 0.7
execute as @e[tag=projector_pixel] run data modify entity @s background set value -65536
schedule function holo:hack/restart_game 8t
