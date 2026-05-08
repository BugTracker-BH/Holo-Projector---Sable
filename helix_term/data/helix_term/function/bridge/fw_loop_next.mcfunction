# helix_term:bridge/fw_loop_next - Restart the loop if still active
execute if score helix _fw_looping matches 0 run return 0
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 0.5 1.4
function helix_term:bridge/fireworks_burst
