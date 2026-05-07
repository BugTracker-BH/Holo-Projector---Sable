# helix:ttt/place_ai_set — MACRO: stash _ttt_pick into storage, then dispatch to specific cell setter
execute store result storage helix:vm _ttt_pick_idx int 1 run scoreboard players get helix _ttt_pick
execute if score helix _ttt_pick matches 0 run scoreboard players operation helix ttt_c0 = helix ttt_ai
execute if score helix _ttt_pick matches 1 run scoreboard players operation helix ttt_c1 = helix ttt_ai
execute if score helix _ttt_pick matches 2 run scoreboard players operation helix ttt_c2 = helix ttt_ai
execute if score helix _ttt_pick matches 3 run scoreboard players operation helix ttt_c3 = helix ttt_ai
execute if score helix _ttt_pick matches 4 run scoreboard players operation helix ttt_c4 = helix ttt_ai
execute if score helix _ttt_pick matches 5 run scoreboard players operation helix ttt_c5 = helix ttt_ai
execute if score helix _ttt_pick matches 6 run scoreboard players operation helix ttt_c6 = helix ttt_ai
execute if score helix _ttt_pick matches 7 run scoreboard players operation helix ttt_c7 = helix ttt_ai
execute if score helix _ttt_pick matches 8 run scoreboard players operation helix ttt_c8 = helix ttt_ai
