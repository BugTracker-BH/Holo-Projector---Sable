# helix:parse/primary_array — Parse array literal: [elem, elem, ...]
function helix:parse/consume
data modify storage helix:vm _arr_elems set value []
function helix:parse/array_elems_loop
function helix:parse/consume
data modify storage helix:vm ast_heap append value {kind:"array",elems:[]}
data modify storage helix:vm ast_heap[-1].elems set from storage helix:vm _arr_elems
scoreboard players operation helix _last_node = helix _ast_next
scoreboard players add helix _ast_next 1
