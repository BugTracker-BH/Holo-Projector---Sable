# helix:shell/cmd/run_exec - MACRO: load source from VFS then hand to pipeline
$data modify storage helix:vm src set from storage helix:fs nodes[$(_ri)].content
$execute store success score helix _tmp1 run data get storage helix:fs nodes[$(_ri)].content
