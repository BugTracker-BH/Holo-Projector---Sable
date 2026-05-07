$data modify storage helix:fs _find_name set from storage helix:fs nodes[$(_fi)].name
$execute store success score helix _tmp1 run data get storage helix:fs nodes[$(_fi)].name
