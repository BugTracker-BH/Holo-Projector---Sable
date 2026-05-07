# helix:shell/run - MACRO: entry point from clickable books
$data modify storage helix:vm _cmd set value "$(cmd)"
$data modify storage helix:vm _arg1 set value "$(arg)"
$function helix:shell/run_dispatch
