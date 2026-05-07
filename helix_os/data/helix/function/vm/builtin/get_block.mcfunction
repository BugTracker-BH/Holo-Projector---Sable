# helix:vm/builtin/get_block — Pop x,y,z push block name (placeholder - pushes "air")
data remove storage helix:vm stack[-1]
data remove storage helix:vm stack[-1]
data remove storage helix:vm stack[-1]
data modify storage helix:vm stack append value {t:"str",v:"air"}
