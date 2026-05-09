# holo:art/draw — MACRO: set pixel at (row, col) to ARGB int color
# Caller must provide storage holo:art {row:int, col:int, color:int}
$data modify entity @e[tag=pixel_r$(row)_c$(col),limit=1] background set value $(color)
