# helix:write — MACRO: write content to a file
function helix:_prep
$data modify storage helix:vm _arg1 set value "$(path)"
$data modify storage helix:vm _arg2 set value "$(content)"
function helix:shell/cmd/write
