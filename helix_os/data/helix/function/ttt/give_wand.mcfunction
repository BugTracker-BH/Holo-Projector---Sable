# helix:ttt/give_wand — gives the player a custom TTT Wand stick
give @a[limit=1] minecraft:stick[minecraft:custom_data={ttt_wand:1b},minecraft:item_name='{"text":"TTT Wand","color":"aqua","bold":true}',minecraft:enchantment_glint_override=true,minecraft:lore=['{"text":"Look at a TTT cell and left-click","color":"gray"}']]
playsound minecraft:item.armor.equip_diamond master @a ~ ~ ~ 1 1.4
tellraw @a [{"text":"[TTT] ","color":"aqua","bold":true},{"text":"Wand granted. Hold it, look at a cell on the projector, and left-click to play.","color":"gray"}]
