# helix:compile/node/fn_decl_register — MACRO: register function name → entry address in fn_table
$data modify storage helix:vm fn_table.$(name) set value $(_fn_entry)
