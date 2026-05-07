# helix:ctf/medium/submit — Stage 2: Vigenere decode of "xylvqbqqtrewpdbu" with key "helix" = "terminateaxiom"
execute unless data storage helix:ctf {solved_easy:1} run function helix:_show {msg:"complete stage 1 first",color:"RED"}
execute unless data storage helix:ctf {solved_easy:1} run return 0
execute unless data storage helix:ctf {conf_unlocked:1} run function helix:_show {msg:"unlock containment params first",color:"RED"}
execute unless data storage helix:ctf {conf_unlocked:1} run return 0
data modify storage helix:ctf medium_cipher_proven set value 1
data modify storage helix:ctf solved_medium set value 1
function helix:ctf/medium/pass
