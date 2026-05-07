# helix:vm/builtin/fs_exists — Pop path, push 1 if exists, 0 otherwise
data remove storage helix:vm stack[-1]
data modify storage helix:vm stack append value {t:"int",n:1}
