# helix:pong/check_collide — wall, paddle, scoring
# Top wall
execute if score helix pong_by matches ..0 run scoreboard players set helix pong_vy 1
execute if score helix pong_by matches ..0 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 0.5 1.5
# Bottom wall
execute if score helix pong_by matches 70.. run scoreboard players set helix pong_vy -1
execute if score helix pong_by matches 70.. run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 0.5 1.5
# Player paddle (x=4..5)
scoreboard players operation helix _pby_lo = helix pong_py
scoreboard players remove helix _pby_lo 1
scoreboard players operation helix _pby_hi = helix pong_py
scoreboard players add helix _pby_hi 12
execute if score helix pong_bx matches ..5 if score helix pong_by >= helix _pby_lo if score helix pong_by <= helix _pby_hi run scoreboard players set helix pong_vx 1
execute if score helix pong_bx matches ..5 if score helix pong_by >= helix _pby_lo if score helix pong_by <= helix _pby_hi run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.8 1.6
# AI paddle (x=122..123)
scoreboard players operation helix _aby_lo = helix pong_ay
scoreboard players remove helix _aby_lo 1
scoreboard players operation helix _aby_hi = helix pong_ay
scoreboard players add helix _aby_hi 12
execute if score helix pong_bx matches 121.. if score helix pong_by >= helix _aby_lo if score helix pong_by <= helix _aby_hi run scoreboard players set helix pong_vx -1
execute if score helix pong_bx matches 121.. if score helix pong_by >= helix _aby_lo if score helix pong_by <= helix _aby_hi run playsound minecraft:block.note_block.snare master @a ~ ~ ~ 0.8 1.4
# Score: ball passed left
execute if score helix pong_bx matches ..-2 run function helix:pong/score_ai
# Score: ball passed right
execute if score helix pong_bx matches 130.. run function helix:pong/score_player
function helix:pong/check_winner
