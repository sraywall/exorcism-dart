void main() {
  final raindrops = Raindrops();
  List<String> failArray = [];

  if (raindrops.convert(1) != '1'){
    failArray.add('the sound for 1 is 1');
  }

  if (raindrops.convert(3) != 'Pling'){
    failArray.add('the sound for 3 is Pling');
  }
  
  if (raindrops.convert(5) != 'Plang'){
    failArray.add('the sound for 5 is Plang');
  }
  
  if (raindrops.convert(7) != 'Plong'){
    failArray.add('the sound for 7 is Plong');
  }
  
  if (raindrops.convert(6) != 'Pling'){
    failArray.add('the sound for 6 is Pling as it has a factor 3');
  }
  
  if (raindrops.convert(8) != '8'){
    failArray.add('2 to the power 3 does not make a raindrop sound as 3 is the exponent not the base');
  }
  
  if (raindrops.convert(9) != 'Pling'){
    failArray.add('the sound for 9 is Pling as it has a factor 3');
  }
  
  if (raindrops.convert(10) != 'Plang'){
    failArray.add('the sound for 10 is Plang as it has a factor 5');
  }
  
  if (raindrops.convert(14) != 'Plong'){
    failArray.add('the sound for 14 is Plong as it has a factor of 7');
  }
  
  if (raindrops.convert(15) != 'PlingPlang'){
    failArray.add('the sound for 15 is PlingPlang as it has factors 3 and 5');
  }
  
  if (raindrops.convert(21) != 'PlingPlong'){
    failArray.add('the sound for 21 is PlingPlong as it has factors 3 and 7');
  }
  
  if (raindrops.convert(25) != 'Plang'){
    failArray.add('the sound for 25 is Plang as it has a factor 5');
  }
  
  if (raindrops.convert(27) != 'Pling'){
    failArray.add('the sound for 27 is Pling as it has a factor 3');
  }
  
  if (raindrops.convert(35) != 'PlangPlong'){
    failArray.add('the sound for 35 is PlangPlong as it has factors 5 and 7');
  }
  
  if (raindrops.convert(49) != 'Plong'){
    failArray.add('the sound for 49 is Plong as it has a factor 7');
  }
  
  if (raindrops.convert(52) != '52'){
    failArray.add('the sound for 52 is 52');
  }
  
  if (raindrops.convert(105) != 'PlingPlangPlong'){
    failArray.add('the sound for 105 is PlingPlangPlong as it has factors 3, 5 and 7');
  }
  
  if (raindrops.convert(3125) != 'Plang'){
    failArray.add('the sound for 3125 is Plang as it has a factor 5');
  }

  failArray = [for(var str in failArray) '($str) test fails'];

  if(failArray.isNotEmpty){
    _result(false,failArray);
  } else {
    _result(true, ["all sections pass!"]);
  }
}
