$execute store result score helix _resolve_cur run data get storage helix:fs nodes[$(_wi)].parent
$execute if score helix _resolve_cur matches ..-1 run scoreboard players set helix _resolve_cur 0
