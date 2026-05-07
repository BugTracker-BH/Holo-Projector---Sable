# helix:vm2/show_str — MACRO: print string to chat AND projector
$tellraw @a [{"text":"[HELIX] ","color":"white"},{"text":"$(_last_printed)"}]
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.6 1.2
playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 1.5
function holo:text/set_color {color:"WHITE"}
$function holo:text/display {msg:"$(_last_printed)"}
