// Initialize an array to store Fibonacci numbers
var fib = [0, 1];

// Generate Fibonacci numbers up to a specified limit (e.g., 10)
for (var i = 2; i <= 20; i++) {
    // Next Fibonacci number = previous two numbers' sum
    fib[i] = fib[i - 2] + fib[i - 1];
    console.log(fib[i]);
}