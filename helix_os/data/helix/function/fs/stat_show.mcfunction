$data modify storage helix:fs _stat_name set from storage helix:fs nodes[$(_si)].name
$data modify storage helix:fs _stat_type set from storage helix:fs nodes[$(_si)].type
$data modify storage helix:fs _stat_perm set from storage helix:fs nodes[$(_si)].perm
$data modify storage helix:fs _stat_owner set from storage helix:fs nodes[$(_si)].owner
function helix:fs/stat_display with storage helix:fs
