# helix:compile/patch — MACRO: patch a jump instruction at given address with current code_len
$data modify storage helix:vm code[$(_addr)].addr set value $(_target)
