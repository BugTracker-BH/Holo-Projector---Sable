# helix:vm/builtin/fs_open — Pop path string, push file handle (node index)
data modify storage helix:vm _fs_path set from storage helix:vm stack[-1].v
data remove storage helix:vm stack[-1]
data modify storage helix:vm stack append value {t:"int",n:0}
