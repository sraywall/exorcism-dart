
void main() {
  final armstrongNumbers = ArmstrongNumbers();
  
  List<String> fail_array = [];

  if(armstrongNumbers.isArmstrongNumber('0') != true){
    fail_array.add('Zero is an Armstrong number');
  }
  
  if(armstrongNumbers.isArmstrongNumber('5') != true){
    fail_array.add('Single-digit numbers are Armstrong numbers');
  }
  
  if(armstrongNumbers.isArmstrongNumber('10') != false){
    fail_array.add('There are no two-digit Armstrong numbers');
  }
  
  if(armstrongNumbers.isArmstrongNumber('153') != true){
    fail_array.add('Three digit number is an Armstrong numbers');
  }
  
  if(armstrongNumbers.isArmstrongNumber('100') != false){
    fail_array.add('Three-digit number that is not an Armstrong number');
  }
  
  if(armstrongNumbers.isArmstrongNumber('9474') != true){
    fail_array.add('Four-digit number that is an Armstrong number');
  }  
  
  if(armstrongNumbers.isArmstrongNumber('9475') != false){
    fail_array.add('Four-digit number that is not an Armstrong number');
  }   
  
  if(armstrongNumbers.isArmstrongNumber('9926315') != true){
    fail_array.add('Seven-digit number that is an Armstrong number');
  }
  
  if(armstrongNumbers.isArmstrongNumber('9926314') != false){
    fail_array.add('Seven-digit number that is not an Armstrong number');
  }
  
  if(armstrongNumbers.isArmstrongNumber('186709961001538790100634132976990') != true){
    fail_array.add('Armstrong number containing seven zeros');
  }
  
  if(armstrongNumbers.isArmstrongNumber('115132219018763992565095597973971522401') != true){
    fail_array.add('The largest and last Armstrong number');
  }
  if(fail_array.isNotEmpty){
    _result(false,fail_array);
  } else {
    _result(true, ["all sections pass!"]);
  }
  
}
