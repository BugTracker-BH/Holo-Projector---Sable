# holo:hack/games/reflex/start — bar oscillates; player must sneak when bar is in green zone
scoreboard players set #RX_BAR_C holo.tmp 64
scoreboard players set #RX_DIR holo.tmp 2
scoreboard players set #RX_SNEAK_PREV holo.tmp 0
scoreboard players set #RX_FLASH holo.tmp 0
# Use helix hack_score for hits made
scoreboard players set helix hack_score 0
