# helix:examples/mandelbrot — Render Mandelbrot set pixel-by-pixel on holo projector
function helix:api/reset
data modify storage helix:vm src set value "fn mandelbrot(){let cols=128;let rows=72;holo_clear();for(let py=0;py<rows;py+=1){for(let px=0;px<cols;px+=1){let cx=fpdiv(px*3500-224000,cols*1000);let cy=fpdiv(py*2500-125000,rows*1000);let x=0;let y=0;let i=0;while(i<32){let x2=fpmul(x,x);let y2=fpmul(y,y);if(x2+y2>4000){break;}let nx=x2-y2+cx;y=2*fpmul(x,y)+cy;x=nx;i+=1;}let color=-16777216;if(i<32){color=-65536;}if(i>8){color=-30720;}if(i>16){color=-256;}if(i>24){color=-1;}holo_pixel(px,py,color);}}}mandelbrot();"
function helix:api/run
