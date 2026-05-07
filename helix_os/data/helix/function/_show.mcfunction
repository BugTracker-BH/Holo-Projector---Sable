# helix:_show - MACRO: Central display function
$data modify storage helix:shell msg set value "$(msg)"
$data modify storage helix:shell color set value "$(color)"
$execute if data storage helix:shell {msg:"$(msg)"} run function helix:_show_exec
