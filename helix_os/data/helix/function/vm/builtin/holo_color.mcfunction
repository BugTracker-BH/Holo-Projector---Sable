# helix:vm/builtin/holo_color — Pop color name string and set holo text color
data modify storage helix:vm _hc_color set from storage helix:vm stack[-1].v
data remove storage helix:vm stack[-1]
function helix:vm/builtin/holo_color_set with storage helix:vm
