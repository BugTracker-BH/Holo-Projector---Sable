# helix:vm/op/arr_set_do — MACRO: set arrays[handle].items[idx] = _arr_val
$data modify storage helix:vm arrays[$(_arr_hidx)].items[$(_arr_eidx)] set from storage helix:vm _arr_val
