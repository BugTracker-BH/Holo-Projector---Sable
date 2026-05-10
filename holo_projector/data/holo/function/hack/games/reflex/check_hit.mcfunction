# holo:hack/games/reflex/check_hit — was player's sneak in the green zone?
scoreboard players set #RX_HIT holo.tmp 0
execute if score #RX_BAR_C holo.tmp matches 58..69 run scoreboard players set #RX_HIT holo.tmp 1
execute if score #RX_HIT holo.tmp matches 1 run scoreboard players add helix hack_score 1
execute if score #RX_HIT holo.tmp matches 1 run scoreboard players set #RX_FLASH holo.tmp 4
execute if score #RX_HIT holo.tmp matches 1 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1.0 1.6
execute if score #RX_HIT holo.tmp matches 0 run playsound minecraft:entity.player.hurt master @a ~ ~ ~ 1.0 0.6
execute if score #RX_HIT holo.tmp matches 0 run function holo:hack/lose_attempt
