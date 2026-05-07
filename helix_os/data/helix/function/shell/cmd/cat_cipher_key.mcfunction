# cat_cipher_key — Show cipher key contents (unlocked after conf_k3y applied)
execute if data storage helix:ctf {conf_unlocked:1} run function helix:shell/cmd/cat_cipher_key_show
execute unless data storage helix:ctf {conf_unlocked:1} run function helix:shell/cmd/cat_cipher_key_locked
