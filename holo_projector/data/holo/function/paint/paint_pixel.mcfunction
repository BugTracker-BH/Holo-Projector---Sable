# holo:paint/paint_pixel — Run as the hit pixel; capture its row/col and apply the brush size
scoreboard players operation #PR holo.tmp = @s holo.row
scoreboard players operation #PC holo.tmp = @s holo.col
execute if score holo paint_size matches 1 run function holo:paint/brush_1
execute if score holo paint_size matches 3 run function holo:paint/brush_3
execute if score holo paint_size matches 5 run function holo:paint/brush_5
