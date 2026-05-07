# helix:compile/node/get_call_arg — MACRO: get arg index from call_save.args
$data modify storage helix:vm _arg_ref set from storage helix:vm _call_save.args[$(_ai)]
