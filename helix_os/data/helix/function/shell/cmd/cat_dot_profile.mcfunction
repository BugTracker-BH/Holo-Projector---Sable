data modify storage helix:shell _cat_tmp set value {color:"WHITE"}
data modify storage helix:shell _cat_tmp.content set from storage helix:fs nodes[13].content
function helix:shell/cmd/_cat_display with storage helix:shell _cat_tmp
