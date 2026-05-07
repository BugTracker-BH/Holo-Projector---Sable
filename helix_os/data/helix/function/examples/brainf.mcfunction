# helix:examples/brainf — "Brain F" esoteric-language interpreter running a simple program
function helix:api/reset
data modify storage helix:vm src set value "fn bf(prog){let tape=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];let dp=0;let ip=0;let plen=str_len(prog);while(ip<plen){let c=str_char(prog,ip);if(c==62){dp+=1;}if(c==60){dp-=1;}if(c==43){tape[dp]=tape[dp]+1;}if(c==45){tape[dp]=tape[dp]-1;}if(c==46){println(tape[dp]);}ip+=1;}}bf(\"++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.\");"
function helix:api/run
