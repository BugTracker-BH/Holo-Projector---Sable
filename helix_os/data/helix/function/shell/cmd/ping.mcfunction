# helix:shell/cmd/ping — Network severed
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 0.6 0.8
function helix:_show {msg:"ping: network unreachable (SEVERED)",color:"RED"}
