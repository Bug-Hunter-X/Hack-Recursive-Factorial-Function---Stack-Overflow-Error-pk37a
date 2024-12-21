function foo(x: int): int {
  if (x < 0) {
    return -1; // Indicate an error
  } elseif (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(): void {
  var result = foo(5);
  echo result;
}

function main(): void {
  echo foo(5) . '\n'; //Output: 120
  echo foo(-5) . '\n'; //Output: -1
}

main();