# holo:text/display - MACRO: store msg then render
$data modify storage holo:tx msg set value "$(msg)"
$execute if data storage holo:tx {msg:"$(msg)"} run function holo:text/display_dispatch
