# helix_term:setup - Spawn holo projector, give terminal books, boot the system
execute as @p at @s run function holo:projector/spawn
function holo:control/size_xl
scoreboard players operation #FORCED_SCALE holo.v = helix _user_scale
scoreboard players set helix_term enabled 1
execute as @p run function helix_term:give_books
function helix_term:boot
