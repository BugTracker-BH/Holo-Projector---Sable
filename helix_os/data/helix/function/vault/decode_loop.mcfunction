# helix:vault/decode_loop — iterate cipher byte-by-byte, decode and append
execute if data storage helix:vault {cipher:[]} run return 0
execute store result score helix _vc run data get storage helix:vault cipher[0]
scoreboard players operation helix _vc -= helix _vk
function helix:vault/char_from_code
function helix:vault/append_char with storage helix:vault
data remove storage helix:vault cipher[0]
return run function helix:vault/decode_loop
