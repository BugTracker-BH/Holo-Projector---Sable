# holo:hack/games/tracker/start — random target spawn, init aim tracker
execute store result score #TR_TGT_R holo.tmp run random value 18..58
execute store result score #TR_TGT_C holo.tmp run random value 10..117
scoreboard players operation #TR_DST_R holo.tmp = #TR_TGT_R holo.tmp
scoreboard players operation #TR_DST_C holo.tmp = #TR_TGT_C holo.tmp
scoreboard players set #TR_MOVE_T holo.tmp 0
scoreboard players set #TR_AIM_R holo.tmp -1
scoreboard players set #TR_AIM_C holo.tmp -1
scoreboard players set helix hack_score 0
