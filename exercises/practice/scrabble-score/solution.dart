score(String s){
    Map<String, int> letterValues = {
    "a": 1, "b": 3, "c": 3, "d": 2, "e": 1,
    "f": 4, "g": 2, "h": 4, "i": 1, "j": 8,
    "k": 5, "l": 1, "m": 3, "n": 1, "o": 1,
    "p": 3, "q": 10, "r": 1, "s": 1, "t": 1,
    "u": 1, "v": 4, "w": 4, "x": 8, "y": 4,
    "z": 10
  };
  
  //favor one liner functional style
  return s.toLowerCase().split('').map((ch)=>letterValues[ch]??0).fold(0,(val,sum) => val + sum );
  
  //reduce can only be used on non empty collections
//   return s.toLowerCase().split('').map((ch)=>letterValues[ch]??0).reduce((val,sum) => val + sum );
}
