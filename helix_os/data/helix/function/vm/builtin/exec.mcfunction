# helix:vm/builtin/exec — Pop source string, compile and run as sub-program
data modify storage helix:vm _exec_src set from storage helix:vm stack[-1].v
data remove storage helix:vm stack[-1]
