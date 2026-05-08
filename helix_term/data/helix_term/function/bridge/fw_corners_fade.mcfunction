# helix_term:bridge/fw_corners_fade - Clear all firework pixels
execute if score helix _fw_looping matches 0 run return 0
# Top-left clear
function holo:text/set_pixel {px:1, py:1, color:-16777216}
function holo:text/set_pixel {px:2, py:2, color:-16777216}
function holo:text/set_pixel {px:3, py:3, color:-16777216}
function holo:text/set_pixel {px:4, py:2, color:-16777216}
function holo:text/set_pixel {px:4, py:3, color:-16777216}
function holo:text/set_pixel {px:4, py:4, color:-16777216}
function holo:text/set_pixel {px:5, py:3, color:-16777216}
function holo:text/set_pixel {px:6, py:2, color:-16777216}
function holo:text/set_pixel {px:6, py:4, color:-16777216}
function holo:text/set_pixel {px:7, py:1, color:-16777216}
function holo:text/set_pixel {px:7, py:5, color:-16777216}
function holo:text/set_pixel {px:1, py:5, color:-16777216}
function holo:text/set_pixel {px:2, py:4, color:-16777216}
function holo:text/set_pixel {px:4, py:1, color:-16777216}
function holo:text/set_pixel {px:4, py:5, color:-16777216}
# Top-right clear
function holo:text/set_pixel {px:24, py:1, color:-16777216}
function holo:text/set_pixel {px:25, py:2, color:-16777216}
function holo:text/set_pixel {px:26, py:3, color:-16777216}
function holo:text/set_pixel {px:27, py:2, color:-16777216}
function holo:text/set_pixel {px:27, py:3, color:-16777216}
function holo:text/set_pixel {px:27, py:4, color:-16777216}
function holo:text/set_pixel {px:28, py:3, color:-16777216}
function holo:text/set_pixel {px:29, py:2, color:-16777216}
function holo:text/set_pixel {px:29, py:4, color:-16777216}
function holo:text/set_pixel {px:30, py:1, color:-16777216}
function holo:text/set_pixel {px:30, py:5, color:-16777216}
function holo:text/set_pixel {px:24, py:5, color:-16777216}
function holo:text/set_pixel {px:25, py:4, color:-16777216}
function holo:text/set_pixel {px:27, py:1, color:-16777216}
function holo:text/set_pixel {px:27, py:5, color:-16777216}
# Bottom-left clear
function holo:text/set_pixel {px:1, py:12, color:-16777216}
function holo:text/set_pixel {px:2, py:13, color:-16777216}
function holo:text/set_pixel {px:3, py:14, color:-16777216}
function holo:text/set_pixel {px:4, py:13, color:-16777216}
function holo:text/set_pixel {px:4, py:14, color:-16777216}
function holo:text/set_pixel {px:4, py:15, color:-16777216}
function holo:text/set_pixel {px:5, py:14, color:-16777216}
function holo:text/set_pixel {px:6, py:13, color:-16777216}
function holo:text/set_pixel {px:6, py:15, color:-16777216}
function holo:text/set_pixel {px:7, py:12, color:-16777216}
function holo:text/set_pixel {px:7, py:16, color:-16777216}
function holo:text/set_pixel {px:1, py:16, color:-16777216}
function holo:text/set_pixel {px:2, py:15, color:-16777216}
function holo:text/set_pixel {px:4, py:12, color:-16777216}
function holo:text/set_pixel {px:4, py:16, color:-16777216}
# Bottom-right clear
function holo:text/set_pixel {px:24, py:12, color:-16777216}
function holo:text/set_pixel {px:25, py:13, color:-16777216}
function holo:text/set_pixel {px:26, py:14, color:-16777216}
function holo:text/set_pixel {px:27, py:13, color:-16777216}
function holo:text/set_pixel {px:27, py:14, color:-16777216}
function holo:text/set_pixel {px:27, py:15, color:-16777216}
function holo:text/set_pixel {px:28, py:14, color:-16777216}
function holo:text/set_pixel {px:29, py:13, color:-16777216}
function holo:text/set_pixel {px:29, py:15, color:-16777216}
function holo:text/set_pixel {px:30, py:12, color:-16777216}
function holo:text/set_pixel {px:30, py:16, color:-16777216}
function holo:text/set_pixel {px:24, py:16, color:-16777216}
function holo:text/set_pixel {px:25, py:15, color:-16777216}
function holo:text/set_pixel {px:27, py:12, color:-16777216}
function holo:text/set_pixel {px:27, py:16, color:-16777216}
