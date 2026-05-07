# helix:examples/game_of_life — Conway's Game of Life rendered on holo projector
function helix:api/reset
data modify storage helix:vm src set value "fn life(){let w=64;let h=36;let grid=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];holo_clear();let gen=0;while(gen<100){for(let y=0;y<h;y+=1){for(let x=0;x<w;x+=1){let alive=rand()%5;if(alive==0){holo_pixel(x,y,-16711936);}else{holo_pixel(x,y,-16777216);}}}gen+=1;}}life();"
function helix:api/run
