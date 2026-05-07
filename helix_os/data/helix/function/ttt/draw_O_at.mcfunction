# helix:ttt/draw_O_at — draw an O ring at cell _ttt_cell
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
data modify storage helix:vm color set value -16711936
# 8-point ring at radius 8
function helix:ttt/o_pixel {dx:8,dy:0}
function helix:ttt/o_pixel {dx:-8,dy:0}
function helix:ttt/o_pixel {dx:0,dy:8}
function helix:ttt/o_pixel {dx:0,dy:-8}
function helix:ttt/o_pixel {dx:6,dy:6}
function helix:ttt/o_pixel {dx:-6,dy:6}
function helix:ttt/o_pixel {dx:6,dy:-6}
function helix:ttt/o_pixel {dx:-6,dy:-6}
function helix:ttt/o_pixel {dx:7,dy:3}
function helix:ttt/o_pixel {dx:-7,dy:3}
function helix:ttt/o_pixel {dx:7,dy:-3}
function helix:ttt/o_pixel {dx:-7,dy:-3}
function helix:ttt/o_pixel {dx:3,dy:7}
function helix:ttt/o_pixel {dx:-3,dy:7}
function helix:ttt/o_pixel {dx:3,dy:-7}
function helix:ttt/o_pixel {dx:-3,dy:-7}
