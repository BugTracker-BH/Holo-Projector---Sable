# helix:vm/builtin/println — Print top of stack to holo projector
data modify storage helix:vm _top set from storage helix:vm stack[-1]
data remove storage helix:vm stack[-1]
execute if data storage helix:vm _top{t:"int"} run function helix:vm/builtin/println_int
execute if data storage helix:vm _top{t:"str"} run function helix:vm/builtin/println_str
execute if data storage helix:vm _top{t:"bool"} run function helix:vm/builtin/println_bool
execute if data storage helix:vm _top{t:"null"} run data modify storage helix:vm _last_printed set value "null"
execute if data storage helix:vm _top{t:"null"} run data modify storage helix:vm _last_type set value "null"
function helix:vm/builtin/println_render with storage helix:vm
