# helix:vm/builtin/fs_read — Pop handle, push file content string
data remove storage helix:vm stack[-1]
data modify storage helix:vm stack append value {t:"str",v:""}
