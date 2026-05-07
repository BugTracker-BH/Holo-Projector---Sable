$data modify storage helix:fs _wc_name set from storage helix:fs nodes[$(_wc_idx)].name
$execute store success score helix _tmp1 run data get storage helix:fs nodes[$(_wc_idx)].name
