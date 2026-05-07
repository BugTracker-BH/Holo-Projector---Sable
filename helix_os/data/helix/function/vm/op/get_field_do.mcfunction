# helix:vm/op/get_field_do — MACRO: actual field retrieval
$data modify storage helix:vm stack append from storage helix:vm structs[$(_s_hidx)].fields.$(name)
