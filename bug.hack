```hack
function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function main(): void {
  var x: int = 10;
  var y: int = bar(x);
  echo y; // Output: 22
}
```
This code seems correct at first glance, however, it has a subtle bug related to the `int` type and integer overflow. If the input `x` is sufficiently large, such that the sum `x + 1` exceeds the maximum value for an `int`, an integer overflow occurs.  This results in unexpected behavior, possibly wrapping around to a negative number.  The `echo y` statement will then print an incorrect result.