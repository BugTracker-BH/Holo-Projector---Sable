# helix:run — MACRO: execute a pre-registered Helix program. Usage: /function helix:run {prog:"/home/player/programs/fib.hx"}
function helix:_prep
$data modify storage helix:vm _arg1 set value "$(prog)"
function helix:shell/cmd/run
