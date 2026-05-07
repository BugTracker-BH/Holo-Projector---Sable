# helix:vm2/eval_factor — number literal OR parenthesized expr
function helix:vm2/peek
execute if data storage helix:vm {_ch:"("} run function helix:vm2/factor_paren
execute if data storage helix:vm {_ch:"("} run return 0
function helix:vm2/parse_number
