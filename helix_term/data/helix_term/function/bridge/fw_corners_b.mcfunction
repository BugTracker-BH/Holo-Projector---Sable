# helix_term:bridge/fw_corners_b - Second burst: expanded ring
execute if score helix _fw_looping matches 0 run return 0
playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 0.5 1.5
# Top-left expand
function holo:text/set_pixel {px:2, py:2, color:-256}
function holo:text/set_pixel {px:6, py:2, color:-16711936}
function holo:text/set_pixel {px:2, py:4, color:-65536}
function holo:text/set_pixel {px:6, py:4, color:-65281}
function holo:text/set_pixel {px:4, py:1, color:-30720}
function holo:text/set_pixel {px:4, py:5, color:-30720}
# Top-right expand
function holo:text/set_pixel {px:25, py:2, color:-65281}
function holo:text/set_pixel {px:29, py:2, color:-256}
function holo:text/set_pixel {px:25, py:4, color:-16776961}
function holo:text/set_pixel {px:29, py:4, color:-16711936}
function holo:text/set_pixel {px:27, py:1, color:-30977}
function holo:text/set_pixel {px:27, py:5, color:-30977}
# Bottom-left expand
function holo:text/set_pixel {px:2, py:13, color:-16711681}
function holo:text/set_pixel {px:6, py:13, color:-256}
function holo:text/set_pixel {px:2, py:15, color:-65281}
function holo:text/set_pixel {px:6, py:15, color:-16711936}
function holo:text/set_pixel {px:4, py:12, color:-65536}
function holo:text/set_pixel {px:4, py:16, color:-65536}
# Bottom-right expand
function holo:text/set_pixel {px:25, py:13, color:-65536}
function holo:text/set_pixel {px:29, py:13, color:-65281}
function holo:text/set_pixel {px:25, py:15, color:-256}
function holo:text/set_pixel {px:29, py:15, color:-16776961}
function holo:text/set_pixel {px:27, py:12, color:-16711936}
function holo:text/set_pixel {px:27, py:16, color:-16711936}
