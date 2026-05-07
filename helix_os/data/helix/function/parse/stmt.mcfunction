# helix:parse/stmt — Parse a single statement: fn_decl, struct, let, const, if, while, for, return, break, continue, block, or expression
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
# fn declaration
execute if data storage helix:vm _cur_tok{t:"KW",v:"fn"} run function helix:parse/fn_decl
execute if data storage helix:vm _cur_tok{t:"KW",v:"fn"} run return 0
# struct declaration
execute if data storage helix:vm _cur_tok{t:"KW",v:"struct"} run function helix:parse/struct_decl
execute if data storage helix:vm _cur_tok{t:"KW",v:"struct"} run return 0
# let statement
execute if data storage helix:vm _cur_tok{t:"KW",v:"let"} run function helix:parse/let_stmt
execute if data storage helix:vm _cur_tok{t:"KW",v:"let"} run return 0
# const statement
execute if data storage helix:vm _cur_tok{t:"KW",v:"const"} run function helix:parse/const_stmt
execute if data storage helix:vm _cur_tok{t:"KW",v:"const"} run return 0
# if statement
execute if data storage helix:vm _cur_tok{t:"KW",v:"if"} run function helix:parse/if_stmt
execute if data storage helix:vm _cur_tok{t:"KW",v:"if"} run return 0
# while statement
execute if data storage helix:vm _cur_tok{t:"KW",v:"while"} run function helix:parse/while_stmt
execute if data storage helix:vm _cur_tok{t:"KW",v:"while"} run return 0
# for statement
execute if data storage helix:vm _cur_tok{t:"KW",v:"for"} run function helix:parse/for_stmt
execute if data storage helix:vm _cur_tok{t:"KW",v:"for"} run return 0
# return statement
execute if data storage helix:vm _cur_tok{t:"KW",v:"return"} run function helix:parse/return_stmt
execute if data storage helix:vm _cur_tok{t:"KW",v:"return"} run return 0
# break statement
execute if data storage helix:vm _cur_tok{t:"KW",v:"break"} run function helix:parse/break_stmt
execute if data storage helix:vm _cur_tok{t:"KW",v:"break"} run return 0
# continue statement
execute if data storage helix:vm _cur_tok{t:"KW",v:"continue"} run function helix:parse/continue_stmt
execute if data storage helix:vm _cur_tok{t:"KW",v:"continue"} run return 0
# block
execute if data storage helix:vm _cur_tok{t:"DELIM",v:"{"} run function helix:parse/block
execute if data storage helix:vm _cur_tok{t:"DELIM",v:"{"} run return 0
# expression statement
function helix:parse/expr_stmt
