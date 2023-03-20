//Doesn't work because integers not large enough to hold last tests
import 'dart:math';
class ArmstrongNumbers {
  isArmstrongNumber(String num){ 
    return num.split('').map((ch)=>pow(int.parse(ch),num.length)).reduce((curr,sum)=>curr+sum).toString() == num;
  }
}

