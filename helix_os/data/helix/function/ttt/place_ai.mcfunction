# helix:ttt/place_ai — write AI symbol to ttt_c<_ttt_pick> via macro, then draw + check
function helix:ttt/place_ai_set with storage helix:vm
scoreboard players operation helix _ttt_cell = helix _ttt_pick
playsound minecraft:block.stone.place master @a ~ ~ ~ 1 0.9
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 0.4 1.2
function helix:ttt/draw_ai_at
function helix:ttt/check_win
