# helix:shell/cmd/run_exec - MACRO: load source from VFS then compile+run
$data modify storage helix:vm src set from storage helix:fs nodes[$(_ri)].content
$function helix:shell/cmd/run_pipeline
