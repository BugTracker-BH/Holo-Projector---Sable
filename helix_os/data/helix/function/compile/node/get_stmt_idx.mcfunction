# helix:compile/node/get_stmt_idx — MACRO: get statement index from stmts array
$data modify storage helix:vm _stmt_ref set from storage helix:vm _walk_node.stmts[$(_si)]
