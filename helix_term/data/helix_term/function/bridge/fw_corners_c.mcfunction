# helix_term:bridge/fw_corners_c - Burst frame 3: outermost sparks on 128x72 grid
execute if score helix _fw_looping matches 0 run return 0
# Top-left outer (15,12)
function holo:text/set_pixel {px:9, py:6, color:-30720}
function holo:text/set_pixel {px:21, py:6, color:-256}
function holo:text/set_pixel {px:9, py:18, color:-16711936}
function holo:text/set_pixel {px:21, py:18, color:-65536}
function holo:text/set_pixel {px:15, py:6, color:-65281}
function holo:text/set_pixel {px:15, py:18, color:-16711681}
# Top-right outer (112,12)
function holo:text/set_pixel {px:106, py:6, color:-16711936}
function holo:text/set_pixel {px:118, py:6, color:-65281}
function holo:text/set_pixel {px:106, py:18, color:-256}
function holo:text/set_pixel {px:118, py:18, color:-65536}
function holo:text/set_pixel {px:112, py:6, color:-30720}
function holo:text/set_pixel {px:112, py:18, color:-16776961}
# Bottom-left outer (15,59)
function holo:text/set_pixel {px:9, py:53, color:-65281}
function holo:text/set_pixel {px:21, py:53, color:-16776961}
function holo:text/set_pixel {px:9, py:65, color:-256}
function holo:text/set_pixel {px:21, py:65, color:-30720}
function holo:text/set_pixel {px:15, py:53, color:-16711936}
function holo:text/set_pixel {px:15, py:65, color:-65536}
# Bottom-right outer (112,59)
function holo:text/set_pixel {px:106, py:53, color:-256}
function holo:text/set_pixel {px:118, py:53, color:-65536}
function holo:text/set_pixel {px:106, py:65, color:-16711681}
function holo:text/set_pixel {px:118, py:65, color:-65281}
function holo:text/set_pixel {px:112, py:53, color:-30720}
function holo:text/set_pixel {px:112, py:65, color:-256}
