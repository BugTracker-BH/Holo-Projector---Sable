# helix:shell/prompt — Show shell prompt on projector and update prompt_path storage
data modify storage helix:shell prompt_path set value "~"
execute if score helix_term enabled matches 1 run function helix_term:bridge/prompt
