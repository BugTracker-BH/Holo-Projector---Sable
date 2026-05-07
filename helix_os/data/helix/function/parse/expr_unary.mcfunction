# helix:parse/expr_unary — Parse unary operators: - and !
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
# Unary minus
execute if data storage helix:vm _cur_tok{t:"OP",v:"-"} run function helix:parse/unary_neg
execute if data storage helix:vm _cur_tok{t:"OP",v:"-"} run return 0
# Unary not
execute if data storage helix:vm _cur_tok{t:"OP",v:"!"} run function helix:parse/unary_not
execute if data storage helix:vm _cur_tok{t:"OP",v:"!"} run return 0
# No unary operator — parse postfix
function helix:parse/expr_postfix
