class Raindrops {
  convert (int i){
    var str = '${i %3 == 0 ? 'Pling' : ""}${i % 5 == 0 ? 'Plang' : ""}${i % 7 == 0 ? 'Plong' : ""}';
    return str == '' ? '$i' : str;
  }
}
