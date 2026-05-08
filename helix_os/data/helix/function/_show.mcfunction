# helix:_show - MACRO: Display message on holo projector + chat. THE critical output function.
$data modify storage helix:shell _show_msg set value "$(msg)"
$data modify storage helix:shell _show_color set value "$(color)"
$data modify storage holo:m req_color set value "$(color)"
$data modify storage holo:tx msg set value "$(msg)"
$data modify storage holo:m msg set value "$(msg)"
$execute if data storage helix:shell {_show_msg:"$(msg)"} run function helix:_show_render
