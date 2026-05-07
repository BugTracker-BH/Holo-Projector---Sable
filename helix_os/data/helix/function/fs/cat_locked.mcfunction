$execute if data storage helix:ctf {$(_cat_unlock)_unlocked:1} run data modify storage helix:fs _cat_content set from storage helix:fs nodes[$(_ci)].content
$execute if data storage helix:ctf {$(_cat_unlock)_unlocked:1} run function helix:fs/cat_display with storage helix:fs
$execute unless data storage helix:ctf {$(_cat_unlock)_unlocked:1} run function helix:_show {msg:"locked - use unlock command",color:"RED"}
