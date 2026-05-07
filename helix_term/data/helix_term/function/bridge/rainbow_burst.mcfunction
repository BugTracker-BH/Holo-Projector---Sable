# helix_term:bridge/rainbow_burst — 4-corner symmetric explosions, no rockets, looped
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1.2
function helix_term:bridge/rb_explode_a
schedule function helix_term:bridge/rb_explode_b 4t
schedule function helix_term:bridge/rb_explode_c 8t
schedule function helix_term:bridge/rb_fade 12t
