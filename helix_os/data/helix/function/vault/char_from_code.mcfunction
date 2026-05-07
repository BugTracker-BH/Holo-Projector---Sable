# helix:vault/char_from_code — map _vc to single-char string in helix:vault ch
data modify storage helix:vault ch set value "?"
execute if score helix _vc matches 51 run data modify storage helix:vault ch set value "3"
execute if score helix _vc matches 107 run data modify storage helix:vault ch set value "k"
execute if score helix _vc matches 108 run data modify storage helix:vault ch set value "l"
execute if score helix _vc matches 110 run data modify storage helix:vault ch set value "n"
execute if score helix _vc matches 114 run data modify storage helix:vault ch set value "r"
