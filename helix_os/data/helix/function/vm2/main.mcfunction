# helix:vm2/main — Detect println("...") vs println(int_or_expr)
data modify storage helix:vm _prefix set string storage helix:vm src 0 8
execute unless data storage helix:vm {_prefix:"println("} run function helix:vm2/err_unsupported
execute unless data storage helix:vm {_prefix:"println("} run return 0
scoreboard players set helix _pos 8
function helix:vm2/peek
execute if data storage helix:vm {_ch:"\""} run function helix:vm2/handle_string
execute unless data storage helix:vm {_ch:"\""} run function helix:vm2/handle_int
