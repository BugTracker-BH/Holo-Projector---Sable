# helix:pong/check_winner — has either player reached the target?
execute if score helix pong_score_p >= helix pong_target run function helix:pong/win_screen
execute if score helix pong_score_a >= helix pong_target run function helix:pong/lose_screen
