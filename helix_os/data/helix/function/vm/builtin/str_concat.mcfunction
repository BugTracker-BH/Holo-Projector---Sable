# helix:vm/builtin/str_concat — Pop two strings, push concatenation
data modify storage helix:vm _concat_b set from storage helix:vm stack[-1].v
data remove storage helix:vm stack[-1]
data modify storage helix:vm _concat_a set from storage helix:vm stack[-1].v
data remove storage helix:vm stack[-1]
data modify storage helix:vm _concat_result set value ""
data modify storage helix:vm _concat_result set from storage helix:vm _concat_a
data modify storage helix:vm stack append value {t:"str",v:""}
data modify storage helix:vm stack[-1].v set from storage helix:vm _concat_result
