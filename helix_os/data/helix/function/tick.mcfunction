# helix:tick — Main tick loop
scoreboard players add helix uptime 1
execute if score helix running matches 1 run function helix:vm/run
