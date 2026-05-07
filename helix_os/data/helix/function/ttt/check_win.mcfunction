# helix:ttt/check_win — scan 8 win lines using ttt_c0..8 scoreboards
scoreboard players set helix _ttt_pwin 0
scoreboard players set helix _ttt_awin 0
# Rows (player wins)
execute if score helix ttt_c0 = helix ttt_player if score helix ttt_c1 = helix ttt_player if score helix ttt_c2 = helix ttt_player run scoreboard players set helix _ttt_pwin 1
execute if score helix ttt_c3 = helix ttt_player if score helix ttt_c4 = helix ttt_player if score helix ttt_c5 = helix ttt_player run scoreboard players set helix _ttt_pwin 1
execute if score helix ttt_c6 = helix ttt_player if score helix ttt_c7 = helix ttt_player if score helix ttt_c8 = helix ttt_player run scoreboard players set helix _ttt_pwin 1
# Cols (player)
execute if score helix ttt_c0 = helix ttt_player if score helix ttt_c3 = helix ttt_player if score helix ttt_c6 = helix ttt_player run scoreboard players set helix _ttt_pwin 1
execute if score helix ttt_c1 = helix ttt_player if score helix ttt_c4 = helix ttt_player if score helix ttt_c7 = helix ttt_player run scoreboard players set helix _ttt_pwin 1
execute if score helix ttt_c2 = helix ttt_player if score helix ttt_c5 = helix ttt_player if score helix ttt_c8 = helix ttt_player run scoreboard players set helix _ttt_pwin 1
# Diags (player)
execute if score helix ttt_c0 = helix ttt_player if score helix ttt_c4 = helix ttt_player if score helix ttt_c8 = helix ttt_player run scoreboard players set helix _ttt_pwin 1
execute if score helix ttt_c2 = helix ttt_player if score helix ttt_c4 = helix ttt_player if score helix ttt_c6 = helix ttt_player run scoreboard players set helix _ttt_pwin 1
# Same for AI
execute if score helix ttt_c0 = helix ttt_ai if score helix ttt_c1 = helix ttt_ai if score helix ttt_c2 = helix ttt_ai run scoreboard players set helix _ttt_awin 1
execute if score helix ttt_c3 = helix ttt_ai if score helix ttt_c4 = helix ttt_ai if score helix ttt_c5 = helix ttt_ai run scoreboard players set helix _ttt_awin 1
execute if score helix ttt_c6 = helix ttt_ai if score helix ttt_c7 = helix ttt_ai if score helix ttt_c8 = helix ttt_ai run scoreboard players set helix _ttt_awin 1
execute if score helix ttt_c0 = helix ttt_ai if score helix ttt_c3 = helix ttt_ai if score helix ttt_c6 = helix ttt_ai run scoreboard players set helix _ttt_awin 1
execute if score helix ttt_c1 = helix ttt_ai if score helix ttt_c4 = helix ttt_ai if score helix ttt_c7 = helix ttt_ai run scoreboard players set helix _ttt_awin 1
execute if score helix ttt_c2 = helix ttt_ai if score helix ttt_c5 = helix ttt_ai if score helix ttt_c8 = helix ttt_ai run scoreboard players set helix _ttt_awin 1
execute if score helix ttt_c0 = helix ttt_ai if score helix ttt_c4 = helix ttt_ai if score helix ttt_c8 = helix ttt_ai run scoreboard players set helix _ttt_awin 1
execute if score helix ttt_c2 = helix ttt_ai if score helix ttt_c4 = helix ttt_ai if score helix ttt_c6 = helix ttt_ai run scoreboard players set helix _ttt_awin 1
execute if score helix _ttt_pwin matches 1 run function helix:ttt/win_screen
execute if score helix _ttt_awin matches 1 run function helix:ttt/lose_screen
