# helix:util/str_eq — MACRO: Compare two strings, sets helix _str_eq_result to 1 if equal
$data modify storage helix:vm _str_cmp_a set value "$(a)"
$data modify storage helix:vm _str_cmp_b set value "$(b)"
execute store success score helix _str_eq_result run data modify storage helix:vm _str_cmp_a set from storage helix:vm _str_cmp_b
execute store result score helix _str_eq_tmp run scoreboard players get helix _str_eq_result
execute if score helix _str_eq_tmp matches 0 run scoreboard players set helix _str_eq_result 1
execute if score helix _str_eq_tmp matches 1 run scoreboard players set helix _str_eq_result 0
