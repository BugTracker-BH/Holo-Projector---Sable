# helix:lex/scan_op — Scan operator or delimiter, emit appropriate token
# Check two-character operators first
scoreboard players operation helix _tmp1 = helix _tok_pos
scoreboard players add helix _tmp1 1
execute if score helix _tmp1 < helix _src_len run function helix:lex/scan_op_two_char
execute if score helix _op2_found matches 1 run return 0
# Single character operators and delimiters
execute if data storage helix:vm {ch:"+"} run data modify storage helix:vm tokens append value {t:"OP",v:"+"}
execute if data storage helix:vm {ch:"+"} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:"+"} run return 0
execute if data storage helix:vm {ch:"-"} run data modify storage helix:vm tokens append value {t:"OP",v:"-"}
execute if data storage helix:vm {ch:"-"} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:"-"} run return 0
execute if data storage helix:vm {ch:"*"} run data modify storage helix:vm tokens append value {t:"OP",v:"*"}
execute if data storage helix:vm {ch:"*"} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:"*"} run return 0
execute if data storage helix:vm {ch:"/"} run data modify storage helix:vm tokens append value {t:"OP",v:"/"}
execute if data storage helix:vm {ch:"/"} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:"/"} run return 0
execute if data storage helix:vm {ch:"%"} run data modify storage helix:vm tokens append value {t:"OP",v:"%"}
execute if data storage helix:vm {ch:"%"} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:"%"} run return 0
execute if data storage helix:vm {ch:"="} run data modify storage helix:vm tokens append value {t:"OP",v:"="}
execute if data storage helix:vm {ch:"="} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:"="} run return 0
execute if data storage helix:vm {ch:"<"} run data modify storage helix:vm tokens append value {t:"OP",v:"<"}
execute if data storage helix:vm {ch:"<"} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:"<"} run return 0
execute if data storage helix:vm {ch:">"} run data modify storage helix:vm tokens append value {t:"OP",v:">"}
execute if data storage helix:vm {ch:">"} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:">"} run return 0
execute if data storage helix:vm {ch:"!"} run data modify storage helix:vm tokens append value {t:"OP",v:"!"}
execute if data storage helix:vm {ch:"!"} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:"!"} run return 0
# Delimiters
execute if data storage helix:vm {ch:"("} run data modify storage helix:vm tokens append value {t:"DELIM",v:"("}
execute if data storage helix:vm {ch:"("} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:"("} run return 0
execute if data storage helix:vm {ch:")"} run data modify storage helix:vm tokens append value {t:"DELIM",v:")"}
execute if data storage helix:vm {ch:")"} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:")"} run return 0
execute if data storage helix:vm {ch:"{"} run data modify storage helix:vm tokens append value {t:"DELIM",v:"{"}
execute if data storage helix:vm {ch:"{"} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:"{"} run return 0
execute if data storage helix:vm {ch:"}"} run data modify storage helix:vm tokens append value {t:"DELIM",v:"}"}
execute if data storage helix:vm {ch:"}"} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:"}"} run return 0
execute if data storage helix:vm {ch:"["} run data modify storage helix:vm tokens append value {t:"DELIM",v:"["}
execute if data storage helix:vm {ch:"["} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:"["} run return 0
execute if data storage helix:vm {ch:"]"} run data modify storage helix:vm tokens append value {t:"DELIM",v:"]"}
execute if data storage helix:vm {ch:"]"} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:"]"} run return 0
execute if data storage helix:vm {ch:","} run data modify storage helix:vm tokens append value {t:"DELIM",v:","}
execute if data storage helix:vm {ch:","} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:","} run return 0
execute if data storage helix:vm {ch:";"} run data modify storage helix:vm tokens append value {t:"DELIM",v:";"}
execute if data storage helix:vm {ch:";"} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:";"} run return 0
execute if data storage helix:vm {ch:"."} run data modify storage helix:vm tokens append value {t:"DELIM",v:"."}
execute if data storage helix:vm {ch:"."} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:"."} run return 0
execute if data storage helix:vm {ch:":"} run data modify storage helix:vm tokens append value {t:"DELIM",v:":"}
execute if data storage helix:vm {ch:":"} run scoreboard players add helix _tok_pos 1
execute if data storage helix:vm {ch:":"} run return 0
# Unknown character — skip
scoreboard players add helix _tok_pos 1
