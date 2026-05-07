# helix:lex/scan_op_two_char — Check for two-character operators like ==, !=, <=, >=, &&, ||, +=, -=, *=, /=, %=
scoreboard players set helix _op2_found 0
scoreboard players operation helix _tmp1 = helix _tok_pos
scoreboard players add helix _tmp1 1
execute store result storage helix:vm _i int 1 run scoreboard players get helix _tmp1
scoreboard players add helix _tmp1 1
execute store result storage helix:vm _j int 1 run scoreboard players get helix _tmp1
function helix:lex/scan_op_peek with storage helix:vm
# ==
execute if data storage helix:vm {ch:"="} if data storage helix:vm {_peek_op:"="} run data modify storage helix:vm tokens append value {t:"OP",v:"=="}
execute if data storage helix:vm {ch:"="} if data storage helix:vm {_peek_op:"="} run scoreboard players add helix _tok_pos 2
execute if data storage helix:vm {ch:"="} if data storage helix:vm {_peek_op:"="} run scoreboard players set helix _op2_found 1
execute if score helix _op2_found matches 1 run return 0
# !=
execute if data storage helix:vm {ch:"!"} if data storage helix:vm {_peek_op:"="} run data modify storage helix:vm tokens append value {t:"OP",v:"!="}
execute if data storage helix:vm {ch:"!"} if data storage helix:vm {_peek_op:"="} run scoreboard players add helix _tok_pos 2
execute if data storage helix:vm {ch:"!"} if data storage helix:vm {_peek_op:"="} run scoreboard players set helix _op2_found 1
execute if score helix _op2_found matches 1 run return 0
# <=
execute if data storage helix:vm {ch:"<"} if data storage helix:vm {_peek_op:"="} run data modify storage helix:vm tokens append value {t:"OP",v:"<="}
execute if data storage helix:vm {ch:"<"} if data storage helix:vm {_peek_op:"="} run scoreboard players add helix _tok_pos 2
execute if data storage helix:vm {ch:"<"} if data storage helix:vm {_peek_op:"="} run scoreboard players set helix _op2_found 1
execute if score helix _op2_found matches 1 run return 0
# >=
execute if data storage helix:vm {ch:">"} if data storage helix:vm {_peek_op:"="} run data modify storage helix:vm tokens append value {t:"OP",v:">="}
execute if data storage helix:vm {ch:">"} if data storage helix:vm {_peek_op:"="} run scoreboard players add helix _tok_pos 2
execute if data storage helix:vm {ch:">"} if data storage helix:vm {_peek_op:"="} run scoreboard players set helix _op2_found 1
execute if score helix _op2_found matches 1 run return 0
# &&
execute if data storage helix:vm {ch:"&"} if data storage helix:vm {_peek_op:"&"} run data modify storage helix:vm tokens append value {t:"OP",v:"&&"}
execute if data storage helix:vm {ch:"&"} if data storage helix:vm {_peek_op:"&"} run scoreboard players add helix _tok_pos 2
execute if data storage helix:vm {ch:"&"} if data storage helix:vm {_peek_op:"&"} run scoreboard players set helix _op2_found 1
execute if score helix _op2_found matches 1 run return 0
# ||
execute if data storage helix:vm {ch:"|"} if data storage helix:vm {_peek_op:"|"} run data modify storage helix:vm tokens append value {t:"OP",v:"||"}
execute if data storage helix:vm {ch:"|"} if data storage helix:vm {_peek_op:"|"} run scoreboard players add helix _tok_pos 2
execute if data storage helix:vm {ch:"|"} if data storage helix:vm {_peek_op:"|"} run scoreboard players set helix _op2_found 1
execute if score helix _op2_found matches 1 run return 0
# +=
execute if data storage helix:vm {ch:"+"} if data storage helix:vm {_peek_op:"="} run data modify storage helix:vm tokens append value {t:"OP",v:"+="}
execute if data storage helix:vm {ch:"+"} if data storage helix:vm {_peek_op:"="} run scoreboard players add helix _tok_pos 2
execute if data storage helix:vm {ch:"+"} if data storage helix:vm {_peek_op:"="} run scoreboard players set helix _op2_found 1
execute if score helix _op2_found matches 1 run return 0
# -=
execute if data storage helix:vm {ch:"-"} if data storage helix:vm {_peek_op:"="} run data modify storage helix:vm tokens append value {t:"OP",v:"-="}
execute if data storage helix:vm {ch:"-"} if data storage helix:vm {_peek_op:"="} run scoreboard players add helix _tok_pos 2
execute if data storage helix:vm {ch:"-"} if data storage helix:vm {_peek_op:"="} run scoreboard players set helix _op2_found 1
execute if score helix _op2_found matches 1 run return 0
# *=
execute if data storage helix:vm {ch:"*"} if data storage helix:vm {_peek_op:"="} run data modify storage helix:vm tokens append value {t:"OP",v:"*="}
execute if data storage helix:vm {ch:"*"} if data storage helix:vm {_peek_op:"="} run scoreboard players add helix _tok_pos 2
execute if data storage helix:vm {ch:"*"} if data storage helix:vm {_peek_op:"="} run scoreboard players set helix _op2_found 1
execute if score helix _op2_found matches 1 run return 0
# /=
execute if data storage helix:vm {ch:"/"} if data storage helix:vm {_peek_op:"="} run data modify storage helix:vm tokens append value {t:"OP",v:"/="}
execute if data storage helix:vm {ch:"/"} if data storage helix:vm {_peek_op:"="} run scoreboard players add helix _tok_pos 2
execute if data storage helix:vm {ch:"/"} if data storage helix:vm {_peek_op:"="} run scoreboard players set helix _op2_found 1
execute if score helix _op2_found matches 1 run return 0
# %=
execute if data storage helix:vm {ch:"%"} if data storage helix:vm {_peek_op:"="} run data modify storage helix:vm tokens append value {t:"OP",v:"%="}
execute if data storage helix:vm {ch:"%"} if data storage helix:vm {_peek_op:"="} run scoreboard players add helix _tok_pos 2
execute if data storage helix:vm {ch:"%"} if data storage helix:vm {_peek_op:"="} run scoreboard players set helix _op2_found 1
