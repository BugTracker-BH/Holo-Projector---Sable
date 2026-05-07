# helix:shell/cmd/hexdump — Show hex of file or default AXIOM signature
execute store result score helix _arg_len run data get storage helix:vm _arg1
execute if score helix _arg_len matches ..0 run function helix:_show {msg:"48 45 4C 49 58 2D 4F 53",color:"AQUA"}
execute if score helix _arg_len matches 1.. run function helix:_show {msg:"41 58 49 4F 4D 00 FF FE",color:"AQUA"}
