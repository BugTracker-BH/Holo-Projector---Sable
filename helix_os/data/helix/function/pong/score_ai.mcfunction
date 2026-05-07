# helix:pong/score_ai — AI scores, ball serves toward player
scoreboard players add helix pong_score_a 1
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 0.7
function helix:pong/serve
scoreboard players set helix pong_vx -1
