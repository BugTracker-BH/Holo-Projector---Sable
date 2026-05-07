# helix:compile/node/call — Compile function call: push args, emit call/builtin
data modify storage helix:vm _call_save set from storage helix:vm _walk_node
# Check if builtin
scoreboard players set helix _is_builtin 0
execute if data storage helix:vm _call_save{name:"print"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"println"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"input"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"int_to_str"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"str_len"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"str_concat"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"str_char"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"rand"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"abs"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"min"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"max"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"sleep"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"place_block"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"fill_blocks"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"get_block"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"holo_pixel"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"holo_clear"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"holo_color"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"fpmul"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"fpdiv"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"fs_open"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"fs_read"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"fs_write"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"fs_ls"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"fs_exists"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"exec"} run scoreboard players set helix _is_builtin 1
execute if data storage helix:vm _call_save{name:"get_pid"} run scoreboard players set helix _is_builtin 1
# Compile arguments
function helix:compile/node/call_args
# Emit call or builtin instruction
execute if score helix _is_builtin matches 1 run function helix:compile/node/call_builtin_emit with storage helix:vm
execute if score helix _is_builtin matches 0 run function helix:compile/node/call_fn_emit with storage helix:vm
