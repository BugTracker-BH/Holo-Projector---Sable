$execute store result score helix _ls_cur_len run data get storage helix:fs _ls_out
$execute if score helix _ls_cur_len matches ..0 run data modify storage helix:fs _ls_out set value "$(_ls_node_name)"
$execute if score helix _ls_cur_len matches 1.. run data modify storage helix:fs _ls_out set value "$(_ls_out) $(_ls_node_name)"
