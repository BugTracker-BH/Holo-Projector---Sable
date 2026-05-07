# helix:shell/cmd/grep_filter - Non-macro: skip non-files and empty, then match
execute unless data storage helix:fs {_grep_type:"file"} run return 0
execute store result score helix _gc_len run data get storage helix:fs _grep_content
execute if score helix _gc_len matches ..0 run return 0
function helix:shell/cmd/grep_do_match with storage helix:fs
