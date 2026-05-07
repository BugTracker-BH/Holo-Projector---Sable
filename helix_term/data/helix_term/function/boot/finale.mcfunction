# helix_term:boot/finale — Rainbow greeting with smart scale fallback so text always fits
scoreboard players set #LIVE_MODE holo.state 0
scoreboard players set #PENDING_MODE holo.state 0
scoreboard players set #TRANSITIONING holo.state 0
scoreboard players set #WRAP_ERROR holo.tmp 0
scoreboard players set #RAINBOW holo.state 1
scoreboard players set #RAINBOW_OFFSET holo.v 0
data modify storage helix:shell msg set value "Helix OS is Ready!"
data modify storage helix:shell color set value "YELLOW"
function helix:_smart_scale
function holo:text/display {msg:"Helix OS is Ready!"}
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 0.6 1.4
playsound minecraft:block.amethyst_cluster.break master @a ~ ~ ~ 0.7 1.2
playsound minecraft:item.totem.use master @a ~ ~ ~ 0.3 1.5
schedule function helix_term:boot/finale_anim 3t
