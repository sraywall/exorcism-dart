
import 'dart:math';
class ArmstrongNumbers {
  isArmstrongNumber(String num){
//     Doesn't work because integers not large enough to hold last tests
//     return num.split('').map((ch)=>pow(int.parse(ch),num.length)).reduce((curr,sum)=>curr+sum).toString() == num;
    return num.split('').map((ch)=>BigInt.parse(ch).pow(num.length)).reduce((curr,sum)=>curr+sum).toString() == num;
  }
}
