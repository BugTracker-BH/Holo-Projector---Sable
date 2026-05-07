# helix:find — MACRO: find by filename. Usage: /function helix:find {q:"passwd"}
function helix:_prep
$data modify storage helix:vm _arg1 set value "$(q)"
function helix:shell/cmd/find
