function helix:_prep
$data modify storage helix:vm _login_user set value "$(user)"
$data modify storage helix:vm _arg1 set value "$(pass)"
function helix:shell/cmd/login
