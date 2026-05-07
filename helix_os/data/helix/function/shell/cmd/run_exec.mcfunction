$data modify storage helix:vm src set from storage helix:fs nodes[$(_ri)].content
execute store result score helix _src_len run data get storage helix:vm src
execute if score helix _src_len matches ..0 run function helix:_show {msg:"empty program",color:"YELLOW"}
execute if score helix _src_len matches ..0 run return 0
execute if score helix _src_len matches 1024.. run function helix:_show {msg:"program too large (max 1024 chars)",color:"RED"}
execute if score helix _src_len matches 1024.. run return 0
function helix:_show {msg:"running...",color:"GREEN"}
function helix:lex/start
function helix:parse/start
function helix:compile/start
function helix:vm/start
function helix:vm/run
