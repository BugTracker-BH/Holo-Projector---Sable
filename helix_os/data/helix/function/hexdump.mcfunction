# helix:hexdump — MACRO: hex dump a file
function helix:_prep
$data modify storage helix:vm _arg1 set value "$(path)"
function helix:shell/cmd/hexdump
