# helix:_show_safe - Truncate message and dispatch to chat + holo
execute store result score helix _msg_len run data get storage helix:shell _show_msg
data modify storage helix:shell _show_short set from storage helix:shell _show_msg
execute if score helix _msg_len matches 60.. run data modify storage helix:shell _show_short set string storage helix:shell _show_msg 0 60
function helix:_show_chat with storage helix:shell
function helix:_show_holo with storage helix:shell
