function holo:text/set_pixel {px:14, py:16, color:0}
function holo:text/set_pixel {px:13, py:16, color:0}
function holo:text/set_pixel {px:15, py:16, color:0}
function holo:text/set_pixel {px:14, py:15, color:0}
function holo:text/set_pixel {px:14, py:17, color:0}
function holo:text/set_pixel {px:13, py:15, color:0}
function holo:text/set_pixel {px:15, py:15, color:0}
function holo:text/set_pixel {px:13, py:17, color:0}
function holo:text/set_pixel {px:15, py:17, color:0}
function holo:text/set_pixel {px:114, py:16, color:0}
function holo:text/set_pixel {px:113, py:16, color:0}
function holo:text/set_pixel {px:115, py:16, color:0}
function holo:text/set_pixel {px:114, py:15, color:0}
function holo:text/set_pixel {px:114, py:17, color:0}
function holo:text/set_pixel {px:113, py:15, color:0}
function holo:text/set_pixel {px:115, py:15, color:0}
function holo:text/set_pixel {px:113, py:17, color:0}
function holo:text/set_pixel {px:115, py:17, color:0}
function holo:text/set_pixel {px:14, py:13, color:0}
function holo:text/set_pixel {px:14, py:19, color:0}
function holo:text/set_pixel {px:11, py:16, color:0}
function holo:text/set_pixel {px:17, py:16, color:0}
function holo:text/set_pixel {px:12, py:14, color:0}
function holo:text/set_pixel {px:16, py:14, color:0}
function holo:text/set_pixel {px:12, py:18, color:0}
function holo:text/set_pixel {px:16, py:18, color:0}
function holo:text/set_pixel {px:13, py:13, color:0}
function holo:text/set_pixel {px:15, py:13, color:0}
function holo:text/set_pixel {px:13, py:19, color:0}
function holo:text/set_pixel {px:15, py:19, color:0}
function holo:text/set_pixel {px:114, py:13, color:0}
function holo:text/set_pixel {px:114, py:19, color:0}
function holo:text/set_pixel {px:111, py:16, color:0}
function holo:text/set_pixel {px:117, py:16, color:0}
function holo:text/set_pixel {px:112, py:14, color:0}
function holo:text/set_pixel {px:116, py:14, color:0}
function holo:text/set_pixel {px:112, py:18, color:0}
function holo:text/set_pixel {px:116, py:18, color:0}
function holo:text/set_pixel {px:113, py:13, color:0}
function holo:text/set_pixel {px:115, py:13, color:0}
function holo:text/set_pixel {px:113, py:19, color:0}
function holo:text/set_pixel {px:115, py:19, color:0}
function holo:text/set_pixel {px:14, py:10, color:0}
function holo:text/set_pixel {px:14, py:22, color:0}
function holo:text/set_pixel {px:8, py:16, color:0}
function holo:text/set_pixel {px:20, py:16, color:0}
function holo:text/set_pixel {px:10, py:12, color:0}
function holo:text/set_pixel {px:18, py:12, color:0}
function holo:text/set_pixel {px:10, py:20, color:0}
function holo:text/set_pixel {px:18, py:20, color:0}
function holo:text/set_pixel {px:11, py:10, color:0}
function holo:text/set_pixel {px:17, py:10, color:0}
function holo:text/set_pixel {px:11, py:22, color:0}
function holo:text/set_pixel {px:17, py:22, color:0}
function holo:text/set_pixel {px:114, py:10, color:0}
function holo:text/set_pixel {px:114, py:22, color:0}
function holo:text/set_pixel {px:108, py:16, color:0}
function holo:text/set_pixel {px:120, py:16, color:0}
function holo:text/set_pixel {px:110, py:12, color:0}
function holo:text/set_pixel {px:118, py:12, color:0}
function holo:text/set_pixel {px:110, py:20, color:0}
function holo:text/set_pixel {px:118, py:20, color:0}
function holo:text/set_pixel {px:111, py:10, color:0}
function holo:text/set_pixel {px:117, py:10, color:0}
function holo:text/set_pixel {px:111, py:22, color:0}
function holo:text/set_pixel {px:117, py:22, color:0}
execute if score helix _fw_looping matches 1 if score helix _fw_stage matches 1 run function holo:text/set_color {color:"LIME"}
execute if score helix _fw_looping matches 1 if score helix _fw_stage matches 1 run function holo:text/display {msg:"CTF LEVEL 1 SOLVED"}
execute if score helix _fw_looping matches 1 if score helix _fw_stage matches 2 run function holo:text/set_color {color:"AQUA"}
execute if score helix _fw_looping matches 1 if score helix _fw_stage matches 2 run function holo:text/display {msg:"CTF LEVEL 2 SOLVED"}
execute if score helix _fw_looping matches 1 if score helix _fw_stage matches 3 run function holo:text/set_color {color:"GOLD"}
execute if score helix _fw_looping matches 1 if score helix _fw_stage matches 3 run function holo:text/display {msg:"CTF LEVEL 3 SOLVED"}
execute if score helix _fw_looping matches 1 run schedule function helix_term:bridge/fireworks_burst 4t
