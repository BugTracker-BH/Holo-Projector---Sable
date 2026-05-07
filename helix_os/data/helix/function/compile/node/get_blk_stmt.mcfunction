# helix:compile/node/get_blk_stmt — MACRO: get statement idx from saved block's stmts
$data modify storage helix:vm _stmt_ref set from storage helix:vm _blk_save.stmts[$(_si)]
