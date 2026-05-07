# helix:lex/scan_ident — Scan an identifier or keyword, accumulating chars
scoreboard players operation helix _ident_start = helix _tok_pos
function helix:lex/scan_ident_loop
# Extract the identifier substring
execute store result storage helix:vm _i int 1 run scoreboard players get helix _ident_start
execute store result storage helix:vm _j int 1 run scoreboard players get helix _tok_pos
function helix:lex/scan_ident_extract with storage helix:vm
# Check if keyword
scoreboard players set helix _is_kw 0
execute if data storage helix:vm {_ident_val:"fn"} run scoreboard players set helix _is_kw 1
execute if data storage helix:vm {_ident_val:"let"} run scoreboard players set helix _is_kw 1
execute if data storage helix:vm {_ident_val:"const"} run scoreboard players set helix _is_kw 1
execute if data storage helix:vm {_ident_val:"if"} run scoreboard players set helix _is_kw 1
execute if data storage helix:vm {_ident_val:"else"} run scoreboard players set helix _is_kw 1
execute if data storage helix:vm {_ident_val:"while"} run scoreboard players set helix _is_kw 1
execute if data storage helix:vm {_ident_val:"for"} run scoreboard players set helix _is_kw 1
execute if data storage helix:vm {_ident_val:"return"} run scoreboard players set helix _is_kw 1
execute if data storage helix:vm {_ident_val:"break"} run scoreboard players set helix _is_kw 1
execute if data storage helix:vm {_ident_val:"continue"} run scoreboard players set helix _is_kw 1
execute if data storage helix:vm {_ident_val:"struct"} run scoreboard players set helix _is_kw 1
execute if data storage helix:vm {_ident_val:"null"} run scoreboard players set helix _is_kw 1
# Check booleans
execute if data storage helix:vm {_ident_val:"true"} run data modify storage helix:vm tokens append value {t:"BOOL",b:1}
execute if data storage helix:vm {_ident_val:"true"} run return 0
execute if data storage helix:vm {_ident_val:"false"} run data modify storage helix:vm tokens append value {t:"BOOL",b:0}
execute if data storage helix:vm {_ident_val:"false"} run return 0
# Emit keyword or identifier token
execute if score helix _is_kw matches 1 run function helix:lex/emit_kw_token with storage helix:vm
execute if score helix _is_kw matches 1 run return 0
function helix:lex/emit_ident_token with storage helix:vm
