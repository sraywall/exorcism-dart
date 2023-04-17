void main() {
      List<String> failArray = [];
      
      if (addGigasecondTo(DateTime.utc(2015, DateTime.january, 24, 22, 00, 00)) != DateTime.utc(2046, DateTime.october, 02, 23, 46, 40)){
        failArray.add('full time specified');
      }

      if (addGigasecondTo(DateTime.utc(2015, DateTime.january, 24, 23, 59, 59)) !=DateTime.utc(2046, DateTime.october, 03, 01, 46, 39)){
        failArray.add('full time with day roll-over');
      }
      
  
      failArray = [for(var str in failArray) '($str) test fails'];
  
      if(failArray.isNotEmpty){
        _result(false,failArray);
      } else {
        _result(true, ["all sections pass!"]);
      }
}
