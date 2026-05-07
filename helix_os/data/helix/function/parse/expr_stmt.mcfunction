# helix:parse/expr_stmt — Parse expression statement (may include assignment), consume ;
function helix:parse/expr
# Check for assignment operators
execute store result storage helix:vm _tidx int 1 run scoreboard players get helix _tok_idx
function helix:parse/peek_token with storage helix:vm
# Simple assignment: =
execute if data storage helix:vm _cur_tok{t:"OP",v:"="} run function helix:parse/assign_rhs
execute if data storage helix:vm _cur_tok{t:"OP",v:"="} run return run function helix:parse/skip_semi
# Augmented assignments: +=, -=, *=, /=, %=
execute if data storage helix:vm _cur_tok{t:"OP",v:"+="} run function helix:parse/aug_assign_rhs
execute if data storage helix:vm _cur_tok{t:"OP",v:"+="} run return run function helix:parse/skip_semi
execute if data storage helix:vm _cur_tok{t:"OP",v:"-="} run function helix:parse/aug_assign_rhs
execute if data storage helix:vm _cur_tok{t:"OP",v:"-="} run return run function helix:parse/skip_semi
execute if data storage helix:vm _cur_tok{t:"OP",v:"*="} run function helix:parse/aug_assign_rhs
execute if data storage helix:vm _cur_tok{t:"OP",v:"*="} run return run function helix:parse/skip_semi
execute if data storage helix:vm _cur_tok{t:"OP",v:"/="} run function helix:parse/aug_assign_rhs
execute if data storage helix:vm _cur_tok{t:"OP",v:"/="} run return run function helix:parse/skip_semi
execute if data storage helix:vm _cur_tok{t:"OP",v:"%="} run function helix:parse/aug_assign_rhs
execute if data storage helix:vm _cur_tok{t:"OP",v:"%="} run return run function helix:parse/skip_semi
# Plain expression statement — skip trailing ;
function helix:parse/skip_semi
