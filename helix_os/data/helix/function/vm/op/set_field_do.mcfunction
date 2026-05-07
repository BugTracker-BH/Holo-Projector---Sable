# helix:vm/op/set_field_do — MACRO: write field value to struct
$data modify storage helix:vm structs[$(_s_hidx)].fields.$(name) set from storage helix:vm _field_val
