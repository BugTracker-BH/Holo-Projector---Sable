# helix:compile/walk — Walk AST node at _compile_idx, dispatch to kind-specific compiler
execute store result storage helix:vm _widx int 1 run scoreboard players get helix _compile_idx
function helix:compile/load_node with storage helix:vm
# Dispatch by node kind
execute if data storage helix:vm _walk_node{kind:"program"} run return run function helix:compile/node/program
execute if data storage helix:vm _walk_node{kind:"fn_decl"} run return run function helix:compile/node/fn_decl
execute if data storage helix:vm _walk_node{kind:"struct"} run return run function helix:compile/node/struct_decl
execute if data storage helix:vm _walk_node{kind:"let"} run return run function helix:compile/node/let
execute if data storage helix:vm _walk_node{kind:"const"} run return run function helix:compile/node/const
execute if data storage helix:vm _walk_node{kind:"if"} run return run function helix:compile/node/if
execute if data storage helix:vm _walk_node{kind:"while"} run return run function helix:compile/node/while
execute if data storage helix:vm _walk_node{kind:"for"} run return run function helix:compile/node/for
execute if data storage helix:vm _walk_node{kind:"return"} run return run function helix:compile/node/return
execute if data storage helix:vm _walk_node{kind:"break"} run return run function helix:compile/node/break
execute if data storage helix:vm _walk_node{kind:"continue"} run return run function helix:compile/node/continue
execute if data storage helix:vm _walk_node{kind:"assign"} run return run function helix:compile/node/assign
execute if data storage helix:vm _walk_node{kind:"aug"} run return run function helix:compile/node/aug_assign
execute if data storage helix:vm _walk_node{kind:"block"} run return run function helix:compile/node/block
execute if data storage helix:vm _walk_node{kind:"call"} run return run function helix:compile/node/call
execute if data storage helix:vm _walk_node{kind:"binop"} run return run function helix:compile/node/binop
execute if data storage helix:vm _walk_node{kind:"unary"} run return run function helix:compile/node/unary
execute if data storage helix:vm _walk_node{kind:"index"} run return run function helix:compile/node/index
execute if data storage helix:vm _walk_node{kind:"member"} run return run function helix:compile/node/member
execute if data storage helix:vm _walk_node{kind:"array"} run return run function helix:compile/node/array_lit
execute if data storage helix:vm _walk_node{kind:"struct_lit"} run return run function helix:compile/node/struct_lit
execute if data storage helix:vm _walk_node{kind:"ident"} run return run function helix:compile/node/ident
execute if data storage helix:vm _walk_node{kind:"int"} run return run function helix:compile/node/int_lit
execute if data storage helix:vm _walk_node{kind:"float"} run return run function helix:compile/node/float_lit
execute if data storage helix:vm _walk_node{kind:"str"} run return run function helix:compile/node/str_lit
execute if data storage helix:vm _walk_node{kind:"bool"} run return run function helix:compile/node/bool_lit
