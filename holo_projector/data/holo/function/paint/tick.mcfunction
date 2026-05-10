# holo:paint/tick — Poll the interaction entity for attack (left-click) and interaction (right-click)
execute unless score #PAINT_ON holo.state matches 10 run return 0

# Left-click = paint
execute store success score #HAS_ATK holo.tmp run data get entity @e[tag=paint_canvas,limit=1] attack
execute if score #HAS_ATK holo.tmp matches 1 run function holo:paint/on_attack

# Right-click = erase
execute store success score #HAS_INT holo.tmp run data get entity @e[tag=paint_canvas,limit=1] interaction
execute if score #HAS_INT holo.tmp matches 1 run function holo:paint/on_interact

schedule function holo:paint/tick 1t
