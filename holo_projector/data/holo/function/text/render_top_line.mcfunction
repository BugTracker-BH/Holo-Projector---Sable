# holo:text/render_top_line - Render msg at upper half at scale 2 (no clear)
scoreboard players set #TSCALE holo.tmp 2
scoreboard players operation #TWIDTH holo.tmp = #MSGLEN holo.tmp
scoreboard players operation #TWIDTH holo.tmp *= #CHAR_STRIDE holo.v
scoreboard players operation #TWIDTH holo.tmp *= #TSCALE holo.tmp
scoreboard players operation #START_X holo.tmp = #COLS holo.v
scoreboard players operation #START_X holo.tmp -= #TWIDTH holo.tmp
scoreboard players operation #START_X holo.tmp /= #TWO holo.v
scoreboard players operation #START_Y holo.tmp = #ROWS holo.v
scoreboard players set #HALFROW holo.v 4
scoreboard players operation #START_Y holo.tmp /= #TWO holo.v
scoreboard players operation #START_Y holo.tmp -= #HALFROW holo.v
execute if score #START_Y holo.tmp matches ..-1 run scoreboard players set #START_Y holo.tmp 0
scoreboard players set #I holo.tmp 0
scoreboard players operation #CHAR_X holo.tmp = #START_X holo.tmp
function holo:text/render_loop
