# helix:examples/fib — Run Fibonacci(15) demo on the holo projector
function helix:api/reset
data modify storage helix:vm src set value "fn fib(n){if(n<2){return n;}return fib(n-1)+fib(n-2);}println(fib(15));"
function helix:api/run
