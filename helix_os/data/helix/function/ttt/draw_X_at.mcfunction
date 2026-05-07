# helix:ttt/draw_X_at — draw an X glyph at cell _ttt_cell (0-8)
# Cell centers (cx,cy): col*43+21, row*24+12 -> col=cell%3, row=cell/3
scoreboard players operation helix _ttt_col = helix _ttt_cell
scoreboard players operation helix _ttt_col %= helix k3
scoreboard players operation helix _ttt_row = helix _ttt_cell
scoreboard players operation helix _ttt_row /= helix k3
scoreboard players operation helix _ttt_cx = helix _ttt_col
scoreboard players operation helix _ttt_cx *= helix k43
scoreboard players add helix _ttt_cx 21
scoreboard players operation helix _ttt_cy = helix _ttt_row
scoreboard players operation helix _ttt_cy *= helix k24
scoreboard players add helix _ttt_cy 12
scoreboard players set helix _ttt_i -8
data modify storage helix:vm color set value -65536
function helix:ttt/draw_X_loop
