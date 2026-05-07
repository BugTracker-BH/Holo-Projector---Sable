# helix:shell/cmd/su — Switch user (restricted during containment)
execute if data storage helix:vm {_arg1:"root"} run function helix:_show {msg:"su: auth required. containment blocks root access",color:"RED"}
execute unless data storage helix:vm {_arg1:"root"} run function helix:_show {msg:"su: unknown user",color:"RED"}
