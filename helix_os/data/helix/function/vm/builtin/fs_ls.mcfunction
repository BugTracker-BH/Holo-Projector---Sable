# helix:vm/builtin/fs_ls — Pop path, push directory listing string
data remove storage helix:vm stack[-1]
data modify storage helix:vm stack append value {t:"str",v:""}
