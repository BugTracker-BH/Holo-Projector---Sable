# helix:examples/snake — Snake game rendered on holo projector using holo_pixel
function helix:api/reset
data modify storage helix:vm src set value "fn snake(){let w=64;let h=36;let sx=32;let sy=18;let dx=1;let dy=0;let len=5;holo_clear();let steps=0;while(steps<200){holo_pixel(sx,sy,-16711936);sx+=dx;sy+=dy;if(sx>=w){sx=0;}if(sx<0){sx=w-1;}if(sy>=h){sy=0;}if(sy<0){sy=h-1;}if(steps%20==0){let r=rand()%4;if(r==0){dx=1;dy=0;}if(r==1){dx=-1;dy=0;}if(r==2){dx=0;dy=1;}if(r==3){dx=0;dy=-1;}}steps+=1;}}snake();"
function helix:api/run
