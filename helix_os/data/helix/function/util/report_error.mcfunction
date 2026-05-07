# helix:util/report_error — Print current VM error to chat as red text
tellraw @a [{"text":"[HELIX ERROR] ","color":"red","bold":true},{"nbt":"error","storage":"helix:vm","color":"red"}]
