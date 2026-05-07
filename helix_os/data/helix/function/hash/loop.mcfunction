execute if data storage helix:vm {_hbuf:""} run return 0
data modify storage helix:vm _hc set string storage helix:vm _hbuf 0 1
scoreboard players set helix _code 0
function helix:hash/char_code
scoreboard players operation helix _hash *= helix _c33
scoreboard players operation helix _hash += helix _code
scoreboard players operation helix _hash %= helix _cmod
data modify storage helix:vm _hbuf set string storage helix:vm _hbuf 1
function helix:hash/loop
