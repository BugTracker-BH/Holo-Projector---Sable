# helix:ttt/draw_player_at — branch on ttt_player to draw X (1) or O (2)
execute if score helix ttt_player matches 1 run function helix:ttt/draw_X_at
execute if score helix ttt_player matches 2 run function helix:ttt/draw_O_at
