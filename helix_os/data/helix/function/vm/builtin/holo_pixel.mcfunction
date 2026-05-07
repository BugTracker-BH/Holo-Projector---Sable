# helix:vm/builtin/holo_pixel — Pop color, y, x from stack and call holo:text/set_pixel
execute store result score helix _hpx_color run data get storage helix:vm stack[-1].n
data remove storage helix:vm stack[-1]
execute store result score helix _hpx_y run data get storage helix:vm stack[-1].n
data remove storage helix:vm stack[-1]
execute store result score helix _hpx_x run data get storage helix:vm stack[-1].n
data remove storage helix:vm stack[-1]
execute store result storage helix:vm _hpx_args.px int 1 run scoreboard players get helix _hpx_x
execute store result storage helix:vm _hpx_args.py int 1 run scoreboard players get helix _hpx_y
execute store result storage helix:vm _hpx_args.color int 1 run scoreboard players get helix _hpx_color
function holo:text/set_pixel with storage helix:vm _hpx_args
