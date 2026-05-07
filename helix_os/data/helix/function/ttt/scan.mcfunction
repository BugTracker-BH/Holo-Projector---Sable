# helix:ttt/scan — per-tick scanner: detect attack/interaction on each cell entity
execute if score helix ttt_active matches 0 run return 0
execute as @e[tag=ttt_cell_0,limit=1] if data entity @s attack run function helix:ttt/click_0
execute as @e[tag=ttt_cell_0,limit=1] if data entity @s interaction run function helix:ttt/click_0
execute as @e[tag=ttt_cell_1,limit=1] if data entity @s attack run function helix:ttt/click_1
execute as @e[tag=ttt_cell_1,limit=1] if data entity @s interaction run function helix:ttt/click_1
execute as @e[tag=ttt_cell_2,limit=1] if data entity @s attack run function helix:ttt/click_2
execute as @e[tag=ttt_cell_2,limit=1] if data entity @s interaction run function helix:ttt/click_2
execute as @e[tag=ttt_cell_3,limit=1] if data entity @s attack run function helix:ttt/click_3
execute as @e[tag=ttt_cell_3,limit=1] if data entity @s interaction run function helix:ttt/click_3
execute as @e[tag=ttt_cell_4,limit=1] if data entity @s attack run function helix:ttt/click_4
execute as @e[tag=ttt_cell_4,limit=1] if data entity @s interaction run function helix:ttt/click_4
execute as @e[tag=ttt_cell_5,limit=1] if data entity @s attack run function helix:ttt/click_5
execute as @e[tag=ttt_cell_5,limit=1] if data entity @s interaction run function helix:ttt/click_5
execute as @e[tag=ttt_cell_6,limit=1] if data entity @s attack run function helix:ttt/click_6
execute as @e[tag=ttt_cell_6,limit=1] if data entity @s interaction run function helix:ttt/click_6
execute as @e[tag=ttt_cell_7,limit=1] if data entity @s attack run function helix:ttt/click_7
execute as @e[tag=ttt_cell_7,limit=1] if data entity @s interaction run function helix:ttt/click_7
execute as @e[tag=ttt_cell_8,limit=1] if data entity @s attack run function helix:ttt/click_8
execute as @e[tag=ttt_cell_8,limit=1] if data entity @s interaction run function helix:ttt/click_8
execute if score helix ttt_active matches 1 run schedule function helix:ttt/scan 1t
