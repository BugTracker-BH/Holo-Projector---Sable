# helix:shell/exec_dialog_split — Split _dialog_input on first space into _cmd and _arg1
data modify storage helix:vm _cmd set from storage helix:vm _dialog_input
data modify storage helix:vm _arg1 set value ""
execute store result score helix _input_len run data get storage helix:vm _dialog_input
scoreboard players set helix _sp_idx 0
function helix:shell/find_space
