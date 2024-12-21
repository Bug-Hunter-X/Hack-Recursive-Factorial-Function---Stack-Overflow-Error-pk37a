function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(): void {
  var result = foo(5);
  echo result;
}

foo(0); // Returns 1
foo(1); // Returns 1
foo(2); // Returns 2
foo(3); // Returns 6
foo(4); // Returns 24
foo(5); // Returns 120

//This code is problematic because it does not handle the negative number input, and results in stack overflow error.
foo(-1); //Stack Overflow
