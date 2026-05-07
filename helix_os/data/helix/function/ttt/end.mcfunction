# helix:ttt/end — manual stop: kill armor stands, clear projector, take wand
scoreboard players set helix ttt_active 0
schedule clear helix:ttt/scan
kill @e[tag=ttt_interact]
clear @a minecraft:stick[minecraft:custom_data~{ttt_wand:1b}]
advancement revoke @a only helix:ttt_click_0
advancement revoke @a only helix:ttt_click_1
advancement revoke @a only helix:ttt_click_2
advancement revoke @a only helix:ttt_click_3
advancement revoke @a only helix:ttt_click_4
advancement revoke @a only helix:ttt_click_5
advancement revoke @a only helix:ttt_click_6
advancement revoke @a only helix:ttt_click_7
advancement revoke @a only helix:ttt_click_8
function holo:text/clear
