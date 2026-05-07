# helix:shell/cmd/grep_do_match - Simple presence check: report file if it has content
execute store result score helix _gc_len run data get storage helix:fs _grep_content
execute if score helix _gc_len matches 1.. run scoreboard players add helix _grep_hits 1
execute if score helix _gc_len matches 1.. run function helix:shell/cmd/grep_hit_add with storage helix:fs
