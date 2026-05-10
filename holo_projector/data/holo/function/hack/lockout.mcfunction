# holo:hack/lockout — permanent terminal kill. The Rogue AI wins.
scoreboard players set helix hack_lockout 1
scoreboard players set helix hack_active 0
scoreboard players set helix hack_state 0
schedule clear holo:hack/scheduler
schedule clear holo:hack/timer_tick
schedule clear holo:hack/glitch_step

# Final dead-screen: black with one dim red line
execute as @e[tag=projector_pixel] run data modify entity @s background set value -16777216
execute as @e[tag=projector_pixel,scores={holo.row=35..36,holo.col=4..123}] run data modify entity @s background set value -8388608

# Disable the helix terminal completely
scoreboard players set helix_term enabled 0
scoreboard players set helix running 0
scoreboard players set helix halted 1

playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1.5 0.3
tellraw @a [{"text":"\n[SABLE] ","color":"red","bold":true},{"text":"CONTAINMENT BREACHED. TERMINAL OFFLINE.","color":"red"}]
tellraw @a [{"text":"[SABLE] ","color":"red","bold":true},{"text":"You must start a new world to recover.","color":"dark_red","italic":true}]
