execute if score helix ttt_active matches 0 run return 0
execute unless score helix ttt_c7 matches 0 run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 0.6 0.6
execute unless score helix ttt_c7 matches 0 run return 0
scoreboard players operation helix ttt_c7 = helix ttt_player
scoreboard players set helix _ttt_cell 7
playsound minecraft:block.wood.place master @a ~ ~ ~ 1 1.4
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.4 1.6
function helix:ttt/draw_player_at
function helix:ttt/check_win
execute if score helix ttt_active matches 1 run function helix:ttt/ai_move
