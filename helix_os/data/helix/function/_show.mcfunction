# helix:_show - MACRO: Display short message on holo
$data modify storage helix:shell _show_msg set value "$(msg)"
$data modify storage helix:shell _show_color set value "$(color)"
$execute if data storage helix:shell {_show_msg:"$(msg)"} run function helix:_show_safe
