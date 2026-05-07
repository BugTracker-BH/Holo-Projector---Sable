# helix:cat — MACRO: show file contents. Usage: /function helix:cat {path:"/etc/passwd"}
function helix:_prep
$data modify storage helix:vm _arg1 set value "$(path)"
function helix:shell/cmd/cat
