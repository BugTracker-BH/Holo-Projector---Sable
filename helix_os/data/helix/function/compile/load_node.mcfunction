# helix:compile/load_node — MACRO: load AST node at given index into _walk_node
$data modify storage helix:vm _walk_node set from storage helix:vm ast_heap[$(_widx)]
