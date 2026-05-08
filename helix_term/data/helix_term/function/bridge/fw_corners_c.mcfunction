# helix_term:bridge/fw_corners_c - Third burst: outer sparks
execute if score helix _fw_looping matches 0 run return 0
# Top-left outer
function holo:text/set_pixel {px:1, py:1, color:-30720}
function holo:text/set_pixel {px:7, py:1, color:-256}
function holo:text/set_pixel {px:1, py:5, color:-16711936}
function holo:text/set_pixel {px:7, py:5, color:-65536}
# Top-right outer
function holo:text/set_pixel {px:24, py:1, color:-16711936}
function holo:text/set_pixel {px:30, py:1, color:-65281}
function holo:text/set_pixel {px:24, py:5, color:-256}
function holo:text/set_pixel {px:30, py:5, color:-65536}
# Bottom-left outer
function holo:text/set_pixel {px:1, py:12, color:-65281}
function holo:text/set_pixel {px:7, py:12, color:-16776961}
function holo:text/set_pixel {px:1, py:16, color:-256}
function holo:text/set_pixel {px:7, py:16, color:-30720}
# Bottom-right outer
function holo:text/set_pixel {px:24, py:12, color:-256}
function holo:text/set_pixel {px:30, py:12, color:-65536}
function holo:text/set_pixel {px:24, py:16, color:-16711681}
function holo:text/set_pixel {px:30, py:16, color:-65281}
