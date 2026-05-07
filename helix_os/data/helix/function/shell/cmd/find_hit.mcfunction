$execute store result score helix _fr_len run data get storage helix:fs _find_results
$execute if score helix _fr_len matches ..0 run data modify storage helix:fs _find_results set value "$(_find_name)"
$execute if score helix _fr_len matches 1.. run data modify storage helix:fs _find_results set value "$(_find_results) $(_find_name)"
