# helix:vm/op/arr_get_do — MACRO: fetch element from arrays[handle].items[idx]
$data modify storage helix:vm stack append from storage helix:vm arrays[$(_arr_hidx)].items[$(_arr_eidx)]
