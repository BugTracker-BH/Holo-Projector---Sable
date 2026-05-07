# helix:_show — MACRO. Central output function. Stores msg/color in helix:shell, cleans state, renders.
# Usage: /function helix:_show {msg:"hello world", color:"AQUA"}
$data modify storage helix:shell msg set value "$(msg)"
$data modify storage helix:shell color set value "$(color)"
playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 1.4
function helix:_prep
function helix:_show_do with storage helix:shell
