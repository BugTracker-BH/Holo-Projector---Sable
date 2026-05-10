# holo:hack/draw_ui — draws hearts (lives) and timer bar at top of projector
# Clear top UI area
execute as @e[tag=projector_pixel,scores={holo.row=2..7}] run data modify entity @s background set value -16777216

# === HEARTS (3 small hearts at top-left) ===
execute if score helix hack_lives matches 1.. run data modify entity @e[tag=pixel_r3_c3,limit=1] background set value -65536
execute if score helix hack_lives matches 1.. run data modify entity @e[tag=pixel_r3_c5,limit=1] background set value -65536
execute if score helix hack_lives matches 1.. run data modify entity @e[tag=pixel_r4_c3,limit=1] background set value -65536
execute if score helix hack_lives matches 1.. run data modify entity @e[tag=pixel_r4_c4,limit=1] background set value -65536
execute if score helix hack_lives matches 1.. run data modify entity @e[tag=pixel_r4_c5,limit=1] background set value -65536
execute if score helix hack_lives matches 1.. run data modify entity @e[tag=pixel_r5_c4,limit=1] background set value -65536
execute if score helix hack_lives matches 2.. run data modify entity @e[tag=pixel_r3_c9,limit=1] background set value -65536
execute if score helix hack_lives matches 2.. run data modify entity @e[tag=pixel_r3_c11,limit=1] background set value -65536
execute if score helix hack_lives matches 2.. run data modify entity @e[tag=pixel_r4_c9,limit=1] background set value -65536
execute if score helix hack_lives matches 2.. run data modify entity @e[tag=pixel_r4_c10,limit=1] background set value -65536
execute if score helix hack_lives matches 2.. run data modify entity @e[tag=pixel_r4_c11,limit=1] background set value -65536
execute if score helix hack_lives matches 2.. run data modify entity @e[tag=pixel_r5_c10,limit=1] background set value -65536
execute if score helix hack_lives matches 3.. run data modify entity @e[tag=pixel_r3_c15,limit=1] background set value -65536
execute if score helix hack_lives matches 3.. run data modify entity @e[tag=pixel_r3_c17,limit=1] background set value -65536
execute if score helix hack_lives matches 3.. run data modify entity @e[tag=pixel_r4_c15,limit=1] background set value -65536
execute if score helix hack_lives matches 3.. run data modify entity @e[tag=pixel_r4_c16,limit=1] background set value -65536
execute if score helix hack_lives matches 3.. run data modify entity @e[tag=pixel_r4_c17,limit=1] background set value -65536
execute if score helix hack_lives matches 3.. run data modify entity @e[tag=pixel_r5_c16,limit=1] background set value -65536

# === TIMER BAR FRAME (dark red border around bar area: rows 3-6 cols 29-91) ===
execute as @e[tag=projector_pixel,scores={holo.row=3,holo.col=29..91}] run data modify entity @s background set value -8388608
execute as @e[tag=projector_pixel,scores={holo.row=6,holo.col=29..91}] run data modify entity @s background set value -8388608
execute as @e[tag=projector_pixel,scores={holo.row=4..5,holo.col=29}] run data modify entity @s background set value -8388608
execute as @e[tag=projector_pixel,scores={holo.row=4..5,holo.col=91}] run data modify entity @s background set value -8388608

# === TIMER BAR FILL (rows 4-5, cols 30..(30 + seconds - 1) red) ===
scoreboard players operation #BAR_E holo.tmp = helix hack_seconds
scoreboard players add #BAR_E holo.tmp 29
execute as @e[tag=projector_pixel] if score @s holo.row matches 4..5 if score @s holo.col matches 30.. if score @s holo.col <= #BAR_E holo.tmp run data modify entity @s background set value -65536
