# helix:vm/builtin/println_int — Prepare int for display
execute store result storage helix:vm _last_printed int 1 run data get storage helix:vm _top.n
data modify storage helix:vm _last_type set value "int"
