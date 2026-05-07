# helix_term:bridge/println — Route VM println output to holo projector with appropriate color
execute if data storage helix:vm {_last_type:"int"} run function holo:text/set_color {color:"GREEN"}
execute if data storage helix:vm {_last_type:"str"} run function holo:text/set_color {color:"WHITE"}
execute if data storage helix:vm {_last_type:"bool"} run function holo:text/set_color {color:"YELLOW"}
function helix_term:bridge/println_display with storage helix:vm
