# holo:hack/lose — player lost (timer out OR all 3 lives gone). Glitch transition then permanent lockout.
scoreboard players set helix hack_state 2
schedule clear holo:hack/timer_tick
schedule clear holo:hack/games/dodge/tick
schedule clear holo:hack/games/reflex/tick
schedule clear holo:hack/games/tracker/tick

# Red full-screen flash + lose sound
execute as @e[tag=projector_pixel] run data modify entity @s background set value -65536
playsound minecraft:entity.warden.death master @a ~ ~ ~ 1.0 0.4
playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~ 1.5 0.3

schedule function holo:hack/lose_text 5t
schedule function holo:hack/glitch 30t
