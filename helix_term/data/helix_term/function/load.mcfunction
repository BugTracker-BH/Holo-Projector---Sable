# helix_term:load — Initialize the terminal bridge
scoreboard objectives add helix_term dummy
scoreboard objectives add enabled dummy
scoreboard players set helix_term enabled 0
scoreboard players set #FORCED_SCALE holo.v 3
data modify storage helix:shell prompt_path set value "~"
tellraw @a [{"text":"[HELIX TERM] ","color":"dark_green","bold":true},{"text":"Containment bridge loaded. Run ","color":"gray"},{"text":"/function helix_term:setup","color":"yellow"},{"text":" to initialize terminal.","color":"gray"}]
