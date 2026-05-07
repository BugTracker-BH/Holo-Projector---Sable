# helix:vm/op/call_bind_args — Bind call arguments to parameter names in new frame
# For simplicity, store args as local_0, local_1, ... etc by position
# The actual param binding uses the compiler's knowledge of param order
execute if score helix _call_argc matches 0 run return 0
execute if score helix _call_argc matches 1 run function helix:vm/op/call_bind_1
execute if score helix _call_argc matches 2 run function helix:vm/op/call_bind_2
execute if score helix _call_argc matches 3 run function helix:vm/op/call_bind_3
execute if score helix _call_argc matches 4.. run function helix:vm/op/call_bind_n
