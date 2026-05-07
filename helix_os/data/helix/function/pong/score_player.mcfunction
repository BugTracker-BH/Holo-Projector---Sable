# helix:pong/score_player — player scores, ball serves toward AI
scoreboard players add helix pong_score_p 1
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1.5
function helix:pong/serve
scoreboard players set helix pong_vx 1
