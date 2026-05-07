# helix:vm/builtin/int_to_str_write — MACRO: write integer as string
$data modify storage helix:vm stack[-1].v set value "$(_itoa_val)"
