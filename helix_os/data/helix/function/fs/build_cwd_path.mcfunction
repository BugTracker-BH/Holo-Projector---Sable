# helix:fs/build_cwd_path — Reconstruct full path from cwd node index
data modify storage helix:shell cwd set from storage helix:vm _arg1
execute if data storage helix:fs {_first_char:"/"} run return 0
data modify storage helix:shell cwd set from storage helix:vm _arg1
