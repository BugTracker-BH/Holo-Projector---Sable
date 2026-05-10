# holo:hack/intro_anim — short glitch sequence into "YOU HAVE BEEN HACKED"
# Frame 0: full red flash
execute as @e[tag=projector_pixel] run data modify entity @s background set value -65536
# Frame 5: clear to black + horizontal red glitch lines
schedule function holo:hack/intro_glitch 5t
# Frame 12: clear, render "YOU HAVE BEEN HACKED"
schedule function holo:hack/intro_text 12t
# Frame 50: hold the warning, then begin the actual game
schedule function holo:hack/start_game 50t
