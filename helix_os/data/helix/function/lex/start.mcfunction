# helix:lex/start — Initialize lexer and tokenize source (safe bounded)
data modify storage helix:vm tokens set value []
data modify storage helix:vm consts set value []
scoreboard players set helix _tok_pos 0
execute store result score helix _src_len run data get storage helix:vm src
scoreboard players set helix _lex_batch 0
function helix:lex/step
