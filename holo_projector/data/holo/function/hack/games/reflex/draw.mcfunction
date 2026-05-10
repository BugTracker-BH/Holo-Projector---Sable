# holo:hack/games/reflex/draw — game area: track + green target zone + moving bar marker
# Clear game area
execute as @e[tag=projector_pixel,scores={holo.row=20..50}] run data modify entity @s background set value -16777216

# Draw track (gray line, rows 38-39, cols 10-117)
execute as @e[tag=projector_pixel,scores={holo.row=38..39,holo.col=10..117}] run data modify entity @s background set value -8355712

# Draw green target zone (cols 58-69 wider rows 36-41)
execute as @e[tag=projector_pixel,scores={holo.row=36..41,holo.col=58..69}] run data modify entity @s background set value -16711936

# Draw bar marker (3 wide vertical bar at #RX_BAR_C, rows 30-47, red)
scoreboard players operation #RX_LEFT holo.tmp = #RX_BAR_C holo.tmp
scoreboard players remove #RX_LEFT holo.tmp 1
scoreboard players operation #RX_RIGHT holo.tmp = #RX_BAR_C holo.tmp
scoreboard players add #RX_RIGHT holo.tmp 1
execute as @e[tag=projector_pixel] if score @s holo.row matches 30..47 if score @s holo.col >= #RX_LEFT holo.tmp if score @s holo.col <= #RX_RIGHT holo.tmp run data modify entity @s background set value -65536

# Score indicator: 10 small white dots row 55, every 10 cols, lit if score >= n
execute if score helix hack_score matches 1.. run data modify entity @e[tag=pixel_r55_c20,limit=1] background set value -1
execute if score helix hack_score matches 2.. run data modify entity @e[tag=pixel_r55_c30,limit=1] background set value -1
execute if score helix hack_score matches 3.. run data modify entity @e[tag=pixel_r55_c40,limit=1] background set value -1
execute if score helix hack_score matches 4.. run data modify entity @e[tag=pixel_r55_c50,limit=1] background set value -1
execute if score helix hack_score matches 5.. run data modify entity @e[tag=pixel_r55_c60,limit=1] background set value -1
execute if score helix hack_score matches 6.. run data modify entity @e[tag=pixel_r55_c70,limit=1] background set value -1
execute if score helix hack_score matches 7.. run data modify entity @e[tag=pixel_r55_c80,limit=1] background set value -1
execute if score helix hack_score matches 8.. run data modify entity @e[tag=pixel_r55_c90,limit=1] background set value -1
execute if score helix hack_score matches 9.. run data modify entity @e[tag=pixel_r55_c100,limit=1] background set value -1
execute if score helix hack_score matches 10.. run data modify entity @e[tag=pixel_r55_c110,limit=1] background set value -1
