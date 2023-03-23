import 'dart:math';
class DifferenceOfSquares {
  // Put your code here
  squareOfSum(int n) => pow([for(var i = 1; i <= n; i++) i].reduce((acc,sum)=>acc+sum),2);
  sumOfSquares(int n) => [for(var i = 1; i <= n; i++) i * i].reduce((acc,sum)=>acc+sum);
  differenceOfSquares(int n) =>  squareOfSum(n) - sumOfSquares(n);
}
