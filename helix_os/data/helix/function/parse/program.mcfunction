# helix:parse/program — Parse top-level program: collect statements until EOF
data modify storage helix:vm ast_heap append value {kind:"program",stmts:[]}
scoreboard players operation helix _prog_idx = helix _ast_next
scoreboard players add helix _ast_next 1
function helix:parse/program_loop
