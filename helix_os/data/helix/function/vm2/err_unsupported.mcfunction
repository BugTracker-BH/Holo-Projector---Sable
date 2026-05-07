# helix:vm2/err_unsupported — print error to chat and projector
data modify storage helix:vm _last_printed set value "ERROR: only println(...) supported"
playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 0.7
playsound minecraft:block.anvil.land master @a ~ ~ ~ 0.3 1.4
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 0.6 0.5
tellraw @a [{"text":"[HELIX] ","color":"red"},{"text":"ERROR: only println(\"str\") or println(expr) is supported"}]
function holo:text/set_color {color:"RED"}
function holo:text/display {msg:"ERROR helix mini supports println only"}
