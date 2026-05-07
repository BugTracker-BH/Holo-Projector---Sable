# helix:vm2/digit_value — set _digit to numeric value of _ch, or -1 if not a digit
scoreboard players set helix _digit -1
execute if data storage helix:vm {_ch:"0"} run scoreboard players set helix _digit 0
execute if data storage helix:vm {_ch:"1"} run scoreboard players set helix _digit 1
execute if data storage helix:vm {_ch:"2"} run scoreboard players set helix _digit 2
execute if data storage helix:vm {_ch:"3"} run scoreboard players set helix _digit 3
execute if data storage helix:vm {_ch:"4"} run scoreboard players set helix _digit 4
execute if data storage helix:vm {_ch:"5"} run scoreboard players set helix _digit 5
execute if data storage helix:vm {_ch:"6"} run scoreboard players set helix _digit 6
execute if data storage helix:vm {_ch:"7"} run scoreboard players set helix _digit 7
execute if data storage helix:vm {_ch:"8"} run scoreboard players set helix _digit 8
execute if data storage helix:vm {_ch:"9"} run scoreboard players set helix _digit 9
