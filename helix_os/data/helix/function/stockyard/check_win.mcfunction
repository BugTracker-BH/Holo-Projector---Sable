# helix:stockyard/check_win — count cells of value 5; if all targets covered, win
scoreboard players set helix _sy_won 1
execute unless data storage helix:vm {sy_grid:[]} run scoreboard players set helix _sy_won 1
# Simple heuristic: scan for any remaining bare target (value 3). If none, win.
scoreboard players set helix _sy_has_target 0
scoreboard players set helix _sy_i 0
function helix:stockyard/scan_targets
execute if score helix _sy_has_target matches 0 run function helix:stockyard/win_screen
