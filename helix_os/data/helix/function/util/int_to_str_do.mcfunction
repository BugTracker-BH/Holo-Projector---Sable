# helix:util/int_to_str_do — MACRO: writes the integer value as a string to stack top
$data modify storage helix:vm stack[-1].v set value "$(_itoa_val)"
