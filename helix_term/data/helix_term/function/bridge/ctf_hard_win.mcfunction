# helix_term:bridge/ctf_hard_win - CTF 3 solved, start fireworks loop
scoreboard players set helix _fw_looping 1
playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~ 0.5 1
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1
function helix_term:bridge/fireworks_burst
