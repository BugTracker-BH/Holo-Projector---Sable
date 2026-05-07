# helix:vm/builtin/println_str — Prepare string for display via const lookup
execute store result storage helix:vm _sidx int 1 run data get storage helix:vm _top.idx
function helix:vm/builtin/println_str_resolve with storage helix:vm
