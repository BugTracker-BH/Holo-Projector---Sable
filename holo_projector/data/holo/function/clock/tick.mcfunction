# holo:clock/tick - disabled (time query API changed in 26.1.2)
execute unless score #LIVE_MODE holo.state matches 3 run return 0
