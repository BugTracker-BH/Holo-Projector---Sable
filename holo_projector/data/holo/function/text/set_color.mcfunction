# holo:text/set_color - MACRO: store color name then apply
$data modify storage holo:m req_color set value "$(color)"
$execute if data storage holo:m {req_color:"$(color)"} run function holo:text/apply_color
