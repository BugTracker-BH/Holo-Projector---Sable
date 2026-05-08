# helix_term:bridge/fw_corners_b - Burst frame 2: expanded on 128x72 grid
execute if score helix _fw_looping matches 0 run return 0
playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 0.5 1.5
# Top-left expand (15,12)
function holo:text/set_pixel {px:11, py:8, color:-256}
function holo:text/set_pixel {px:19, py:8, color:-16711936}
function holo:text/set_pixel {px:11, py:16, color:-65536}
function holo:text/set_pixel {px:19, py:16, color:-65281}
function holo:text/set_pixel {px:15, py:8, color:-30720}
function holo:text/set_pixel {px:15, py:16, color:-30720}
function holo:text/set_pixel {px:11, py:12, color:-16711681}
function holo:text/set_pixel {px:19, py:12, color:-16711681}
# Top-right expand (112,12)
function holo:text/set_pixel {px:108, py:8, color:-65281}
function holo:text/set_pixel {px:116, py:8, color:-256}
function holo:text/set_pixel {px:108, py:16, color:-16776961}
function holo:text/set_pixel {px:116, py:16, color:-16711936}
function holo:text/set_pixel {px:112, py:8, color:-30977}
function holo:text/set_pixel {px:112, py:16, color:-30977}
function holo:text/set_pixel {px:108, py:12, color:-65536}
function holo:text/set_pixel {px:116, py:12, color:-65536}
# Bottom-left expand (15,59)
function holo:text/set_pixel {px:11, py:55, color:-16711681}
function holo:text/set_pixel {px:19, py:55, color:-256}
function holo:text/set_pixel {px:11, py:63, color:-65281}
function holo:text/set_pixel {px:19, py:63, color:-16711936}
function holo:text/set_pixel {px:15, py:55, color:-65536}
function holo:text/set_pixel {px:15, py:63, color:-65536}
function holo:text/set_pixel {px:11, py:59, color:-256}
function holo:text/set_pixel {px:19, py:59, color:-256}
# Bottom-right expand (112,59)
function holo:text/set_pixel {px:108, py:55, color:-65536}
function holo:text/set_pixel {px:116, py:55, color:-65281}
function holo:text/set_pixel {px:108, py:63, color:-256}
function holo:text/set_pixel {px:116, py:63, color:-16776961}
function holo:text/set_pixel {px:112, py:55, color:-16711936}
function holo:text/set_pixel {px:112, py:63, color:-16711936}
function holo:text/set_pixel {px:108, py:59, color:-30720}
function holo:text/set_pixel {px:116, py:59, color:-30720}
