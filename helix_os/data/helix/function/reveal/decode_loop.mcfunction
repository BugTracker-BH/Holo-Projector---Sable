execute if data storage helix:reveal {cipher:[]} run return 0
data modify storage helix:reveal ch set value ""
execute store result score helix _cipher run data get storage helix:reveal cipher[0]
scoreboard players operation helix _emit = helix _cipher
scoreboard players operation helix _emit -= helix _offset
execute if score helix _emit matches ..-1 run scoreboard players add helix _emit 256
function helix:reveal/emit_char
function helix:reveal/append with storage helix:reveal
data remove storage helix:reveal cipher[0]
scoreboard players operation helix _offset += helix _ostep
scoreboard players operation helix _offset %= helix _c256
function helix:reveal/decode_loop
