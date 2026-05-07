# helix:ttt/spawn_grid_entities — summon 9 invulnerable invisible armor stands as click targets
# Each stand is tagged ttt_cell_<N> + ttt_interact for batch cleanup.
# Layout matches grid: 3x3 in front of player, ~3 blocks ahead.
execute at @a[limit=1] anchored eyes rotated as @a[limit=1] run summon armor_stand ^-2.5 ^0.75 ^3 {Tags:["ttt_cell_0","ttt_interact"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:0b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959}
execute at @a[limit=1] anchored eyes rotated as @a[limit=1] run summon armor_stand ^0    ^0.75 ^3 {Tags:["ttt_cell_1","ttt_interact"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:0b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959}
execute at @a[limit=1] anchored eyes rotated as @a[limit=1] run summon armor_stand ^2.5  ^0.75 ^3 {Tags:["ttt_cell_2","ttt_interact"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:0b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959}
execute at @a[limit=1] anchored eyes rotated as @a[limit=1] run summon armor_stand ^-2.5 ^-0.75 ^3 {Tags:["ttt_cell_3","ttt_interact"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:0b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959}
execute at @a[limit=1] anchored eyes rotated as @a[limit=1] run summon armor_stand ^0    ^-0.75 ^3 {Tags:["ttt_cell_4","ttt_interact"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:0b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959}
execute at @a[limit=1] anchored eyes rotated as @a[limit=1] run summon armor_stand ^2.5  ^-0.75 ^3 {Tags:["ttt_cell_5","ttt_interact"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:0b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959}
execute at @a[limit=1] anchored eyes rotated as @a[limit=1] run summon armor_stand ^-2.5 ^-2.25 ^3 {Tags:["ttt_cell_6","ttt_interact"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:0b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959}
execute at @a[limit=1] anchored eyes rotated as @a[limit=1] run summon armor_stand ^0    ^-2.25 ^3 {Tags:["ttt_cell_7","ttt_interact"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:0b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959}
execute at @a[limit=1] anchored eyes rotated as @a[limit=1] run summon armor_stand ^2.5  ^-2.25 ^3 {Tags:["ttt_cell_8","ttt_interact"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:0b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959}
