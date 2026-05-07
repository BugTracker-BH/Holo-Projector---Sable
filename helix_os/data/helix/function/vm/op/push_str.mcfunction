# helix:vm/op/push_str — MACRO: push string onto stack via const index
$data modify storage helix:vm stack append value {t:"str",idx:$(idx)}
