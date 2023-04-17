class SpaceAge {
  
    Map<String, num> planets = {
    'Mercury': 0.2408467,
    'Venus': 0.61519726,
    'Earth': 1.0,
    'Mars': 1.8808158,
    'Jupiter': 11.862615,
    'Saturn': 29.447498,
    'Uranus': 84.016846,
    'Neptune': 164.79132,
  };
  
  var secondsInDay = 24 * 60 * 60;
  var daysInYear = 365.25;
  
  double age({required planet,required seconds}){
    var out = (seconds / ((planets[planet] ?? 0.0) * secondsInDay * daysInYear) * 100).round() / 100.0;
    return out;
  }
}

