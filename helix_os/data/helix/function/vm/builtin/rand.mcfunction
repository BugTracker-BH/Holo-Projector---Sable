# helix:vm/builtin/rand — Push random int (0-32767) using Random command
data modify storage helix:vm stack append value {t:"int",n:0}
execute store result storage helix:vm stack[-1].n int 1 run random value 0..32767
