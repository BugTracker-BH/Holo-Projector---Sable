# helix_term:bridge/fireworks_burst - Continuous corner explosions (no rockets)
execute if score helix _fw_looping matches 0 run return 0
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 0.7 1.2
function helix_term:bridge/fw_corners_a
schedule function helix_term:bridge/fw_corners_b 4t
schedule function helix_term:bridge/fw_corners_c 8t
schedule function helix_term:bridge/fw_corners_fade 12t
schedule function helix_term:bridge/fw_loop_next 16t
