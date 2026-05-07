# helix:shell/run - MACRO: entry from book clicks. Sets args and dispatches.
$data modify storage helix:vm _cmd set value "$(cmd)"
$data modify storage helix:vm _arg1 set value "$(arg)"
$execute if data storage helix:vm {_cmd:"$(cmd)"} run function helix:shell/run_dispatch
