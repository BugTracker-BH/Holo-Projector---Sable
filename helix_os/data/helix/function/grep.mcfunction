# helix:grep — MACRO: grep for pattern
function helix:_prep
$data modify storage helix:vm _arg1 set value "$(q)"
function helix:shell/cmd/grep
