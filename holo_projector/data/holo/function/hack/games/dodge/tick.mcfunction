# holo:hack/games/dodge/tick — read player yaw -> paddle, fall enemies, check collision, redraw
# === PADDLE: yaw -> col ===
execute as @p store result score #DG_YAW holo.tmp run data get entity @s Rotation[0]
scoreboard players add #DG_YAW holo.tmp 180
scoreboard players set #DG_K128 holo.tmp 128
scoreboard players set #DG_K360 holo.tmp 360
scoreboard players operation #DG_PADDLE holo.tmp = #DG_YAW holo.tmp
scoreboard players operation #DG_PADDLE holo.tmp *= #DG_K128 holo.tmp
scoreboard players operation #DG_PADDLE holo.tmp /= #DG_K360 holo.tmp
scoreboard players remove #DG_PADDLE holo.tmp 3
execute if score #DG_PADDLE holo.tmp matches ..0 run scoreboard players set #DG_PADDLE holo.tmp 0
execute if score #DG_PADDLE holo.tmp matches 121.. run scoreboard players set #DG_PADDLE holo.tmp 120

# === FALL ENEMIES (every 3rd tick) ===
scoreboard players add #DG_FALL holo.tmp 1
execute if score #DG_FALL holo.tmp matches 3.. run scoreboard players set #DG_FALL holo.tmp 0
execute if score #DG_FALL holo.tmp matches 0 run scoreboard players add #DG_E0_R holo.tmp 1
execute if score #DG_FALL holo.tmp matches 0 run scoreboard players add #DG_E1_R holo.tmp 1
execute if score #DG_FALL holo.tmp matches 0 run scoreboard players add #DG_E2_R holo.tmp 1

# === CHECK COLLISIONS / RESPAWN ===
# Enemy reached row 60 (paddle row). Check overlap with paddle [PADDLE..PADDLE+6].
function holo:hack/games/dodge/check_e0
function holo:hack/games/dodge/check_e1
function holo:hack/games/dodge/check_e2

# === REDRAW SCENE ===
function holo:hack/games/dodge/draw
