# helix:parse/append_prog_stmt — MACRO: append statement index to program node's stmts array
$data modify storage helix:vm ast_heap[$(_pidx)].stmts append value $(_prog_stmts_append)
