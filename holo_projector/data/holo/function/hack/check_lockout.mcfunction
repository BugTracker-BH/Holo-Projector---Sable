# holo:hack/check_lockout — gate function called from helix:shell/dispatch_safe
# If lockout, prints OFFLINE and aborts the dispatch
execute if score helix hack_lockout matches 1 run tellraw @a [{"text":"[SABLE] ","color":"red","bold":true},{"text":"TERMINAL OFFLINE","color":"red"}]
