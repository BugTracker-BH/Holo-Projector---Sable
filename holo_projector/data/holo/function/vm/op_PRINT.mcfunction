# holo:vm/op_PRINT — pop top, print to chat
execute store result score #V_A holo.tmp run data get storage holo:vm stack[0]
data remove storage holo:vm stack[0]
