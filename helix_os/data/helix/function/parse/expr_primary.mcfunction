# helix:parse/expr_primary — Parse primary expressions: literals, identifiers, array/struct literals, parenthesized
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
# Integer literal
execute if data storage helix:vm _cur_tok{t:"INT"} run function helix:parse/primary_int
execute if data storage helix:vm _cur_tok{t:"INT"} run return 0
# String literal
execute if data storage helix:vm _cur_tok{t:"STR"} run function helix:parse/primary_str
execute if data storage helix:vm _cur_tok{t:"STR"} run return 0
# Boolean literal
execute if data storage helix:vm _cur_tok{t:"BOOL"} run function helix:parse/primary_bool
execute if data storage helix:vm _cur_tok{t:"BOOL"} run return 0
# Null literal
execute if data storage helix:vm _cur_tok{t:"KW",v:"null"} run function helix:parse/primary_null
execute if data storage helix:vm _cur_tok{t:"KW",v:"null"} run return 0
# Array literal
execute if data storage helix:vm _cur_tok{t:"DELIM",v:"["} run function helix:parse/primary_array
execute if data storage helix:vm _cur_tok{t:"DELIM",v:"["} run return 0
# Parenthesized expression
execute if data storage helix:vm _cur_tok{t:"DELIM",v:"("} run function helix:parse/primary_paren
execute if data storage helix:vm _cur_tok{t:"DELIM",v:"("} run return 0
# Identifier (default)
function helix:parse/primary_ident
