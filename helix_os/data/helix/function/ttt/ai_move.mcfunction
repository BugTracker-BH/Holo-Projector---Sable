# helix:ttt/ai_move — AI picks first empty cell (center > corners > edges)
scoreboard players set helix _ttt_pick -1
execute if score helix ttt_c4 matches 0 run scoreboard players set helix _ttt_pick 4
execute if score helix _ttt_pick matches -1 if score helix ttt_c0 matches 0 run scoreboard players set helix _ttt_pick 0
execute if score helix _ttt_pick matches -1 if score helix ttt_c2 matches 0 run scoreboard players set helix _ttt_pick 2
execute if score helix _ttt_pick matches -1 if score helix ttt_c6 matches 0 run scoreboard players set helix _ttt_pick 6
execute if score helix _ttt_pick matches -1 if score helix ttt_c8 matches 0 run scoreboard players set helix _ttt_pick 8
execute if score helix _ttt_pick matches -1 if score helix ttt_c1 matches 0 run scoreboard players set helix _ttt_pick 1
execute if score helix _ttt_pick matches -1 if score helix ttt_c3 matches 0 run scoreboard players set helix _ttt_pick 3
execute if score helix _ttt_pick matches -1 if score helix ttt_c5 matches 0 run scoreboard players set helix _ttt_pick 5
execute if score helix _ttt_pick matches -1 if score helix ttt_c7 matches 0 run scoreboard players set helix _ttt_pick 7
execute if score helix _ttt_pick matches -1 run function helix:ttt/draw_screen
execute if score helix _ttt_pick matches -1 run return 0
playsound minecraft:block.stone.place master @a ~ ~ ~ 1 0.9
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 0.4 1.2
execute if score helix _ttt_pick matches 0 run scoreboard players operation helix ttt_c0 = helix ttt_ai
execute if score helix _ttt_pick matches 1 run scoreboard players operation helix ttt_c1 = helix ttt_ai
execute if score helix _ttt_pick matches 2 run scoreboard players operation helix ttt_c2 = helix ttt_ai
execute if score helix _ttt_pick matches 3 run scoreboard players operation helix ttt_c3 = helix ttt_ai
execute if score helix _ttt_pick matches 4 run scoreboard players operation helix ttt_c4 = helix ttt_ai
execute if score helix _ttt_pick matches 5 run scoreboard players operation helix ttt_c5 = helix ttt_ai
execute if score helix _ttt_pick matches 6 run scoreboard players operation helix ttt_c6 = helix ttt_ai
execute if score helix _ttt_pick matches 7 run scoreboard players operation helix ttt_c7 = helix ttt_ai
execute if score helix _ttt_pick matches 8 run scoreboard players operation helix ttt_c8 = helix ttt_ai
scoreboard players operation helix _ttt_cell = helix _ttt_pick
function helix:ttt/draw_ai_at
function helix:ttt/check_win
