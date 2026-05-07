# helix:parse/error — Report a parser error and halt
data modify storage helix:vm error set value "Parse error"
scoreboard players set helix halted 1
function helix:util/report_error
