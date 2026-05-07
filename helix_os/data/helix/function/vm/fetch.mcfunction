# helix:vm/fetch — MACRO: load instruction at PC from code array
$data modify storage helix:vm curr_instr set from storage helix:vm code[$(_pc)]
