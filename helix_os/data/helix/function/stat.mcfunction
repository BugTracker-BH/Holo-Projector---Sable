scoreboard players operation helix _saved_scale = helix _user_scale
scoreboard players set helix _user_scale 1
function helix:_prep
$data modify storage helix:vm _arg1 set value "$(path)"
function helix:shell/cmd/stat
scoreboard players operation helix _user_scale = helix _saved_scale
