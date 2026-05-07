# helix:parse/get_call_name — MACRO: extract function name from AST ident node
$data modify storage helix:vm _call_name set from storage helix:vm ast_heap[$(_cidx)].name
