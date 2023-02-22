String reverse(String s) {
  return s.split("").reversed.join();
  
  //or
  var arr = [];
  
  for(var ch in s.split("")){
    arr.insert(0,ch);
  }
  
  //or
  arr = [];
  for(var ch in s.split("")){
    arr = [ch,...arr];
  }
  
  return arr.join();
}
