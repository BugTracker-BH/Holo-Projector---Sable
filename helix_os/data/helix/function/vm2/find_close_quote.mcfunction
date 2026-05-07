# helix:vm2/find_close_quote — advance _pos until next "
function helix:vm2/peek
execute if data storage helix:vm {_ch:""} run return 0
execute if data storage helix:vm {_ch:"\""} run return 0
scoreboard players add helix _pos 1
return run function helix:vm2/find_close_quote
