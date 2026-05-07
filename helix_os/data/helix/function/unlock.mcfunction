# helix:unlock — MACRO: unlock locked file. Usage: /function helix:unlock {key:"sys_r3ad"}
function helix:_prep
$data modify storage helix:vm _arg1 set value "$(key)"
function helix:shell/cmd/unlock
