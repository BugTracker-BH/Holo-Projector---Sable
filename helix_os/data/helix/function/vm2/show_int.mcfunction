# helix:vm2/show_int — MACRO: print int to chat AND projector
$tellraw @a [{"text":"[HELIX] ","color":"green"},{"text":"$(_last_printed)"}]
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.6 1.4
playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 1.5
function holo:text/set_color {color:"GREEN"}
$function holo:text/display {msg:"$(_last_printed)"}
