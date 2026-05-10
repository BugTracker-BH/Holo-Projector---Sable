# holo:hack/win — player completed the challenge in time
scoreboard players set helix hack_state 2
schedule clear holo:hack/timer_tick
schedule clear holo:hack/games/dodge/tick
schedule clear holo:hack/games/reflex/tick
schedule clear holo:hack/games/tracker/tick

# Green flash + WIN text
execute as @e[tag=projector_pixel] run data modify entity @s background set value -16711936
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1.0 1.5
schedule function holo:hack/win_text 5t
schedule function holo:hack/restore 50t
