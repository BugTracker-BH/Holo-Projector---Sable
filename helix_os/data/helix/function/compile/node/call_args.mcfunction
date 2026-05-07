# helix:compile/node/call_args — Compile all function call arguments
execute store result score helix _call_argc run data get storage helix:vm _call_save.args
scoreboard players set helix _call_argi 0
function helix:compile/node/call_args_loop
