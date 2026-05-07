# helix:vm/builtin/println_bool — Prepare bool for display
execute store result score helix _tmp1 run data get storage helix:vm _top.n
data modify storage helix:vm _last_type set value "bool"
execute if score helix _tmp1 matches 0 run data modify storage helix:vm _last_printed set value "false"
execute unless score helix _tmp1 matches 0 run data modify storage helix:vm _last_printed set value "true"
