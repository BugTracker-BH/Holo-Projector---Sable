# helix:_show - MACRO: THE output function. Sets storage, smart-scales, renders holo, prints chat.
$data modify storage helix:shell _show_msg set value "$(msg)"
$data modify storage helix:shell _show_color set value "$(color)"
$data modify storage holo:m req_color set value "$(color)"
$data modify storage holo:tx msg set value "$(msg)"
$data modify storage holo:m msg set value "$(msg)"
$tellraw @a [{"text":"[HELIX] ","color":"green"},{"text":"$(msg)","color":"white"}]
$execute if data storage holo:m {req_color:"$(color)"} run function helix:_smart_scale
$execute if data storage holo:m {req_color:"$(color)"} run function holo:text/apply_color
$execute if data storage holo:m {req_color:"$(color)"} if entity @e[tag=projector_pixel,limit=1] run function holo:text/display_actual
$execute if data storage holo:m {req_color:"$(color)"} run scoreboard players operation #FORCED_SCALE holo.v = helix _user_scale
$execute if data storage holo:m {req_color:"$(color)"} run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.3 1.4
