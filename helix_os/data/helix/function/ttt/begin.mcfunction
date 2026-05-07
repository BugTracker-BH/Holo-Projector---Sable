# helix:ttt/begin — initialize cell scoreboards, draw grid, give wand, spawn armor-stand targets
function holo:text/clear
scoreboard players set helix ttt_active 1
scoreboard players set helix ttt_c0 0
scoreboard players set helix ttt_c1 0
scoreboard players set helix ttt_c2 0
scoreboard players set helix ttt_c3 0
scoreboard players set helix ttt_c4 0
scoreboard players set helix ttt_c5 0
scoreboard players set helix ttt_c6 0
scoreboard players set helix ttt_c7 0
scoreboard players set helix ttt_c8 0
function helix:ttt/draw_grid
kill @e[tag=ttt_interact]
function helix:ttt/spawn_grid_entities
function helix:ttt/give_wand
advancement revoke @a only helix:ttt_click_0
advancement revoke @a only helix:ttt_click_1
advancement revoke @a only helix:ttt_click_2
advancement revoke @a only helix:ttt_click_3
advancement revoke @a only helix:ttt_click_4
advancement revoke @a only helix:ttt_click_5
advancement revoke @a only helix:ttt_click_6
advancement revoke @a only helix:ttt_click_7
advancement revoke @a only helix:ttt_click_8
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.6 1.4
tellraw @a [{"text":"[TTT] ","color":"aqua","bold":true},{"text":"Hold the TTT Wand, look at a cell, and ","color":"gray"},{"text":"left-click","color":"yellow","bold":true},{"text":" to play.","color":"gray"}]
