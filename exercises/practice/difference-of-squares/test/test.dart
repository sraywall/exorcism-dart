final differenceOfSquares = DifferenceOfSquares();

void main() {
      List<String> fail_array = [];
      
      if (differenceOfSquares.squareOfSum(1) != 1){
        fail_array.add('square of sum 1');
      }
  
      if (differenceOfSquares.squareOfSum(5) != 225){
        fail_array.add('square of sum 5');
      }
  
      if (differenceOfSquares.squareOfSum(100) != 25502500){
        fail_array.add('square of sum 100');
      }
  
      if (differenceOfSquares.sumOfSquares(1) != 1){
        fail_array.add('sum of squares 1');
      }
  
      if (differenceOfSquares.sumOfSquares(5) != 55){
        fail_array.add('sum of squares 5');
      }
  
      if (differenceOfSquares.sumOfSquares(100) != 338350){
        fail_array.add('sum of squares 100');
      }
  
      if (differenceOfSquares.differenceOfSquares(1) != 0){
        fail_array.add('difference of squares 1');
      }
  
      if (differenceOfSquares.differenceOfSquares(5) != 170){
        fail_array.add('difference of squares 5');
      }
  
      if (differenceOfSquares.differenceOfSquares(100) != 25164150){
        fail_array.add('difference of squares 100');
      }      
        
      fail_array = [for(var str in fail_array) '(${str}) test fails'];
      
      if(fail_array.length > 0){
        _result(false,fail_array);
      } else {
        _result(true, ["all sections pass!"]);
      }
}
