# helix:vm/builtin/get_pid — Push current process ID
data modify storage helix:vm stack append value {t:"int",n:0}
execute store result storage helix:vm stack[-1].n int 1 run scoreboard players get helix pid
