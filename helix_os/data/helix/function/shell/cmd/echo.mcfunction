# helix:shell/cmd/echo — Display argument text
execute store result score helix _arg_len run data get storage helix:vm _arg1
execute if score helix _arg_len matches ..0 run function helix:_show {msg:" ",color:"WHITE"}
execute if score helix _arg_len matches 1.. run function helix:shell/cmd/echo_show with storage helix:vm
