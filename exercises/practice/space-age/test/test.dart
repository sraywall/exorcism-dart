void main() {
  final spaceAge = SpaceAge();
      List<String> failArray = [];
      
      if (spaceAge.age(planet: 'Earth', seconds: 1000000000) != 31.69){
        failArray.add('age on Earth');
      }
      
      if (spaceAge.age(planet: 'Mercury', seconds: 2134835688) != 280.88){
        failArray.add('age on Mercury');
      }
      
      if (spaceAge.age(planet: 'Venus', seconds: 189839836) != 9.78){
        failArray.add('age on Venus');
      }
      
      if (spaceAge.age(planet: 'Mars', seconds: 2129871239) != 35.88){
        failArray.add('age on Mars');
      }
        
      if (spaceAge.age(planet: 'Jupiter', seconds: 901876382) != 2.41){
        failArray.add('age on Jupiter');
      }
        
      if (spaceAge.age(planet: 'Saturn', seconds: 2000000000) != 2.15){
        failArray.add('age on Saturn');
      }
        
      if (spaceAge.age(planet: 'Uranus', seconds: 1210123456) != 0.46){
        failArray.add('age on Uranus');
      }
        
      if (spaceAge.age(planet: 'Neptune', seconds: 1821023456) != 0.35){
        failArray.add('age on Neptune');
      }
  
      failArray = [for(var str in failArray) '($str) test fails'];
  
      if(failArray.isNotEmpty){
        _result(false,failArray);
      } else {
        _result(true, ["all sections pass!"]);
      }
}
