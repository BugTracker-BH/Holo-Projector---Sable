# holo:hack/games/reflex/tick — move bar, detect sneak edge, score hits, redraw
# === MOVE BAR ===
scoreboard players operation #RX_BAR_C holo.tmp += #RX_DIR holo.tmp
execute if score #RX_BAR_C holo.tmp matches 117.. run scoreboard players set #RX_DIR holo.tmp -2
execute if score #RX_BAR_C holo.tmp matches ..10 run scoreboard players set #RX_DIR holo.tmp 2

# === DETECT SNEAK EDGE ===
scoreboard players set #RX_SNEAK_NOW holo.tmp 0
execute as @p[predicate=holo:sneaking] run scoreboard players set #RX_SNEAK_NOW holo.tmp 1
scoreboard players set #RX_EDGE holo.tmp 0
execute if score #RX_SNEAK_NOW holo.tmp matches 1 if score #RX_SNEAK_PREV holo.tmp matches 0 run scoreboard players set #RX_EDGE holo.tmp 1
scoreboard players operation #RX_SNEAK_PREV holo.tmp = #RX_SNEAK_NOW holo.tmp

# === IF SNEAK PRESSED THIS TICK ===
execute if score #RX_EDGE holo.tmp matches 1 run function holo:hack/games/reflex/check_hit

# === CHECK WIN ===
execute if score helix hack_score matches 10.. run function holo:hack/win
execute if score helix hack_score matches 10.. run return 0

# === REDRAW ===
function holo:hack/games/reflex/draw
