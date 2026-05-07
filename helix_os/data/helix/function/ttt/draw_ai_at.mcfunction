# helix:ttt/draw_ai_at — branch on ttt_ai to draw X (1) or O (2)
execute if score helix ttt_ai matches 1 run function helix:ttt/draw_X_at
execute if score helix ttt_ai matches 2 run function helix:ttt/draw_O_at
