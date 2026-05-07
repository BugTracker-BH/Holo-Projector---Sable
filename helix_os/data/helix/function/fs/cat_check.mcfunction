# helix:fs/cat_check - MACRO: load file metadata then hand off to validate
$data modify storage helix:fs _cat_type set from storage helix:fs nodes[$(_ci)].type
$data modify storage helix:fs _cat_perm set from storage helix:fs nodes[$(_ci)].perm
$data modify storage helix:fs _cat_unlock set from storage helix:fs nodes[$(_ci)].unlock_key
$data modify storage helix:fs _cat_ci set value $(_ci)
