# helix:examples/primes — Sieve of Eratosthenes, display primes on projector
function helix:api/reset
data modify storage helix:vm src set value "fn sieve(max){let is_prime=[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];is_prime[0]=0;is_prime[1]=0;for(let i=2;i<max;i+=1){if(is_prime[i]==1){let j=i*2;while(j<max){is_prime[j]=0;j+=i;}}}for(let k=0;k<max;k+=1){if(is_prime[k]==1){println(k);}}}sieve(30);"
function helix:api/run
