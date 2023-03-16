void main() {
      List<String> fail_array = [];
  
      if(score('a') != 1){
        fail_array.add('lowercase letter');
      }
  
      if(score('A') != 1){
        fail_array.add('uppercase letter');
      }
   
      if(score('f') != 4){
        fail_array.add('valuable letter');
      }
  
      if(score('at') != 2){
        fail_array.add('short word');
      }  
  
      if(score('zoo') != 12){
        fail_array.add('short valuable word');
      }
    
      if(score('street') != 6){
        fail_array.add('medium word');
      } 
  
      if(score('quirky') != 22){
        fail_array.add('medium valuable word');
      }   
   
      if(score('OxyphenButazone') != 41){
        fail_array.add('long mixed-case word word');
      }   
    
      if(score('pinata') != 8){
        fail_array.add('english-like world');
      }   
     
      if(score('') != 0){
        fail_array.add('empty input');
      }   
 
      if(score('abcdefghijklmnopqrstuvwxyz') != 87){
        fail_array.add('entire alphabet available');
      } 
       
      if(fail_array.isNotEmpty){
        _result(false,fail_array);
      } else {
        _result(true, ["all sections pass!"]);
      }
}
