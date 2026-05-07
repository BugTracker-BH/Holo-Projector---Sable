# helix:vm/builtin/println_render — MACRO: render _last_printed to holo projector with color by type
$execute if data storage helix:vm {_last_type:"int"} run function helix:_show {msg:"$(_last_printed)",color:"GREEN"}
$execute if data storage helix:vm {_last_type:"str"} run function helix:_show {msg:"$(_last_printed)",color:"WHITE"}
$execute if data storage helix:vm {_last_type:"bool"} run function helix:_show {msg:"$(_last_printed)",color:"YELLOW"}
$execute if data storage helix:vm {_last_type:"null"} run function helix:_show {msg:"null",color:"GRAY"}
