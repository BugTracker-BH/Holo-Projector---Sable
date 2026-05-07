# helix:lex/classify — Classify current char and dispatch to appropriate scanner
# Reads helix:vm ch, dispatches to scan_ident, scan_number, scan_string, scan_op, or skips whitespace/comments
execute store result score helix _char_code run data get storage helix:vm ch
# Skip whitespace (space=32, tab=9, newline=10, carriage return=13)
execute if data storage helix:vm {ch:" "} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:" "} run return 0
execute if data storage helix:vm {ch:"\n"} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:"\n"} run return 0
execute if data storage helix:vm {ch:"\t"} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:"\t"} run return 0
execute if data storage helix:vm {ch:"\r"} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:"\r"} run return 0
# Check for // line comment
execute store result storage helix:vm _peek_i int 1 run scoreboard players get helix _tok_pos
scoreboard players operation helix _tmp1 = helix _tok_pos
scoreboard players add helix _tmp1 1
execute store result storage helix:vm _peek_j int 1 run scoreboard players get helix _tmp1
scoreboard players add helix _tmp1 1
execute store result storage helix:vm _peek_j2 int 1 run scoreboard players get helix _tmp1
data modify storage helix:vm _peek_ch set string storage helix:vm src 0 0
execute if score helix _tok_pos < helix _src_len store result storage helix:vm _peek_j int 1 run scoreboard players get helix _tmp1
execute if data storage helix:vm {ch:"/"} run function helix:lex/check_comment
# String literal
execute if data storage helix:vm {ch:"\""} run function helix:lex/scan_string
execute if data storage helix:vm {ch:"\""} run return 0
# Digits
execute if data storage helix:vm {ch:"0"} run function helix:lex/scan_number
execute if data storage helix:vm {ch:"0"} run return 0
execute if data storage helix:vm {ch:"1"} run function helix:lex/scan_number
execute if data storage helix:vm {ch:"1"} run return 0
execute if data storage helix:vm {ch:"2"} run function helix:lex/scan_number
execute if data storage helix:vm {ch:"2"} run return 0
execute if data storage helix:vm {ch:"3"} run function helix:lex/scan_number
execute if data storage helix:vm {ch:"3"} run return 0
execute if data storage helix:vm {ch:"4"} run function helix:lex/scan_number
execute if data storage helix:vm {ch:"4"} run return 0
execute if data storage helix:vm {ch:"5"} run function helix:lex/scan_number
execute if data storage helix:vm {ch:"5"} run return 0
execute if data storage helix:vm {ch:"6"} run function helix:lex/scan_number
execute if data storage helix:vm {ch:"6"} run return 0
execute if data storage helix:vm {ch:"7"} run function helix:lex/scan_number
execute if data storage helix:vm {ch:"7"} run return 0
execute if data storage helix:vm {ch:"8"} run function helix:lex/scan_number
execute if data storage helix:vm {ch:"8"} run return 0
execute if data storage helix:vm {ch:"9"} run function helix:lex/scan_number
execute if data storage helix:vm {ch:"9"} run return 0
# Identifiers and keywords (a-z, A-Z, _)
execute if data storage helix:vm {ch:"_"} run function helix:lex/scan_ident
execute if data storage helix:vm {ch:"_"} run return 0
scoreboard players set helix _is_alpha 0
execute store result score helix _cc run data get storage helix:vm ch
# Check lowercase a-z by comparing string ranges
data modify storage helix:vm _cmp set value "a"
execute store success score helix _tmp2 run data modify storage helix:vm _cmp set from storage helix:vm ch
execute if score helix _tmp2 matches 0 run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"a"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"b"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"c"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"d"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"e"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"f"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"g"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"h"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"i"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"j"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"k"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"l"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"m"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"n"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"o"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"p"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"q"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"r"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"s"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"t"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"u"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"v"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"w"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"x"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"y"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"z"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"A"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"B"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"C"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"D"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"E"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"F"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"G"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"H"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"I"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"J"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"K"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"L"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"M"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"N"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"O"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"P"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"Q"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"R"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"S"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"T"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"U"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"V"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"W"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"X"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"Y"} run scoreboard players set helix _is_alpha 1
execute if data storage helix:vm {ch:"Z"} run scoreboard players set helix _is_alpha 1
execute if score helix _is_alpha matches 1 run function helix:lex/scan_ident
execute if score helix _is_alpha matches 1 run return 0
# Operators and delimiters
function helix:lex/scan_op
