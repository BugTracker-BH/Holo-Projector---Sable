# helix:compile/node/binop — Compile binary operation: compile left, compile right, emit op
data modify storage helix:vm _binop_save set from storage helix:vm _walk_node
execute store result score helix _compile_idx run data get storage helix:vm _binop_save.l
function helix:compile/walk
data modify storage helix:vm _walk_node set from storage helix:vm _binop_save
execute store result score helix _compile_idx run data get storage helix:vm _binop_save.r
function helix:compile/walk
data modify storage helix:vm _walk_node set from storage helix:vm _binop_save
execute if data storage helix:vm _binop_save{op:"+"} run data modify storage helix:vm code append value {op:"add"}
execute if data storage helix:vm _binop_save{op:"-"} run data modify storage helix:vm code append value {op:"sub"}
execute if data storage helix:vm _binop_save{op:"*"} run data modify storage helix:vm code append value {op:"mul"}
execute if data storage helix:vm _binop_save{op:"/"} run data modify storage helix:vm code append value {op:"div"}
execute if data storage helix:vm _binop_save{op:"%"} run data modify storage helix:vm code append value {op:"mod"}
execute if data storage helix:vm _binop_save{op:"=="} run data modify storage helix:vm code append value {op:"eq"}
execute if data storage helix:vm _binop_save{op:"!="} run data modify storage helix:vm code append value {op:"neq"}
execute if data storage helix:vm _binop_save{op:"<"} run data modify storage helix:vm code append value {op:"lt"}
execute if data storage helix:vm _binop_save{op:">"} run data modify storage helix:vm code append value {op:"gt"}
execute if data storage helix:vm _binop_save{op:"<="} run data modify storage helix:vm code append value {op:"lte"}
execute if data storage helix:vm _binop_save{op:">="} run data modify storage helix:vm code append value {op:"gte"}
execute if data storage helix:vm _binop_save{op:"&&"} run data modify storage helix:vm code append value {op:"and"}
execute if data storage helix:vm _binop_save{op:"||"} run data modify storage helix:vm code append value {op:"or"}
scoreboard players add helix _code_len 1
