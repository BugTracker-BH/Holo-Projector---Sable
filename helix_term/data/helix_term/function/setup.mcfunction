# helix_term:setup — Spawn holo projector, size_xl, boot the terminal. Respects saved user scale.
execute as @p at @s run function holo:projector/spawn
function holo:control/size_xl
scoreboard players operation #FORCED_SCALE holo.v = helix _user_scale
scoreboard players set helix_term enabled 1
function helix_term:boot
