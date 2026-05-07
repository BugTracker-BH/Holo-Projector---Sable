# helix:examples/sort — Bubble sort visualization on projector
function helix:api/reset
data modify storage helix:vm src set value "fn sort(arr){let n=arr.len;for(let i=0;i<n;i+=1){for(let j=0;j<n-i-1;j+=1){if(arr[j]>arr[j+1]){let t=arr[j];arr[j]=arr[j+1];arr[j+1]=t;}}}return arr;}let a=[9,4,7,2,8,1,5,3,6,0];println(a);sort(a);println(a);"
function helix:api/run
